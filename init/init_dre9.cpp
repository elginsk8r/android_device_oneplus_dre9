/*
   Copyright (c) 2016, The CyanogenMod Project
             (c) 2017-2021, The LineageOS Project

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <android-base/logging.h>
#include <android-base/properties.h>

#include <string>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "vendor_init.h"

namespace {
constexpr const char* RO_PROP_SOURCES[] = {
        nullptr, "product.", "odm.", "vendor.", "system_ext.", "system.", "bootimage.",
};

constexpr const char* BUILD_DESCRIPTION[] = {
        "OnePlusN200-user 11   release-keys",
        "OnePlusN200TMO-user 11   release-keys",
};

constexpr const char* BUILD_FINGERPRINT[] = {
        "OnePlus/OnePlusN200/OnePlusN200:11/RKQ1.201217.002/2107241556:user/release-keys",
        "OnePlus/OnePlusN200TMO/OnePlusN200TMO:11/RKQ1.201217.002/2110141014:user/release-keys",
};

void property_override(char const prop[], char const value[], bool add = true)
{
    auto pi = (prop_info *) __system_property_find(prop);

    if (pi != nullptr) {
        __system_property_update(pi, value, strlen(value));
    } else if (add) {
        __system_property_add(prop, strlen(prop), value, strlen(value));
    }
}

void load_props(bool is_tmo) {
    const auto ro_prop_override = [](const char* source, const char* prop, const char* value,
                                     bool product) {
        std::string prop_name = "ro.";

        if (product) prop_name += "product.";
        if (source != nullptr) prop_name += source;
        if (!product) prop_name += "build.";
        prop_name += prop;

        property_override(prop_name.c_str(), value);
    };

    std::string device_name =  is_tmo ? "OnePlusN200TMO" : "OnePlusN200";
    for (const auto& source : RO_PROP_SOURCES) {
        ro_prop_override(source, "name", device_name.c_str(), true);
        ro_prop_override(source, "device", device_name.c_str(), true);
        ro_prop_override(source, "model", is_tmo ? "DE2118" : "DE2117", true);
        ro_prop_override(source, "fingerprint", BUILD_FINGERPRINT[is_tmo ? 1 : 0],
                         false);
    }
    ro_prop_override(nullptr, "description", BUILD_DESCRIPTION[is_tmo ? 1 : 0], false);
    ro_prop_override(nullptr, "product", device_name.c_str(), false);
}
}  // anonymous namespace

void vendor_load_properties() {
    std::string project = android::base::GetProperty("ro.boot.project_codename", "");
    load_props(project.compare("dre9") != 0);
}
