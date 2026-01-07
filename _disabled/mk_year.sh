#!/usr/bin/env -S bash -e

for year in 2026 2024 2023 2022 2021; do
    for file in call-for-papers committee index invited-talk keynote panel papers program; do
        [[ -d ${year} ]] || mkdir ${year}
        printf '%s\n' "---" "layout: default" "year: \"${year}\"" "---" "" "{% include ${file}.md %}" >${year}/${file}.md
    done
done
