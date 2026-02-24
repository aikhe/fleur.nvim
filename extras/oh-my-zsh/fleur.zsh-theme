fleur_coquelicot="#FF8080"
fleur_zinnia="#FFBA9D"
fleur_bruyere="#8ABE8A"
fleur_anemone="#485571"
fleur_bleuet="#6D89A7"
fleur_lis="#C9D9D8"

fleur_lulumi="#A8DFDC"
fleur_maomi="#323333"

fleur_black="#101010"
fleur_gray1="#141414"
fleur_gray2="#181818"
fleur_gray3="#2A2A2A"
fleur_gray4="#3D3D3D"
fleur_gray5="#525252"
fleur_gray6="#676767"
fleur_gray7="#939393"
fleur_gray8="#B7B7B7"
fleur_gray9="#EDEDED"

PROMPT="%F{${fleur_gray4}}󰣇 %n@%m "
PROMPT+="%F{${fleur_gray6}} %~ "
PROMPT+='$(git_prompt_info)'
PROMPT+="%F{${fleur_gray5}} %f"

ZSH_THEME_GIT_PROMPT_PREFIX="%F{${fleur_lis}} "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{${fleur_coquelicot}}%f "
ZSH_THEME_GIT_PROMPT_CLEAN=" %F{${fleur_gray6}}󰄬%f"

PROMPT="%(?:%F{${fleur_gray4}}:%F{${fleur_coquelicot}})${PROMPT}"
