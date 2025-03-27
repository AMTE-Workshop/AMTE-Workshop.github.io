for year in 2025 2024 2023 2022 2021; do
    for file in call-for-papers committee index invited-talk keynote panel papers program; do
        [[ -d ${year} ]] || mkdir ${year}
        echo -e "---\nlayout: default\nyear: \"${year}\"\n---\n\n{% include ${file}.md %}" >${year}/${file}.md
    done
done
