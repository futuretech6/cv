.PHONY: default all clean

LATEX=xelatex --shell-escape

MAINDOC=cv
OUTPUT_DIR=out

BASE_ZH=陈希尧-浙江大学-简历
BASE_EN=Xiyao_Chen-Zhejiang_University-CV
BASE_BI=Xiyao_Chen(陈希尧)-ZJU(浙江大学)
BASE_ZH_EN=$(BASE_BI)-zh+en
BASE_EN_ZH=$(BASE_BI)-en+zh
BASE_ZH_QD=$(BASE_ZH)-QD
BASE_ZH_QR=$(BASE_ZH)-QR
BASES=$(BASE_ZH) $(BASE_EN) $(BASE_ZH_EN) $(BASE_EN_ZH) $(BASE_ZH_QD) $(BASE_ZH_QR)

FLAGS=-output-directory=$(OUTPUT_DIR) \
      -interaction=nonstopmode \
      -file-line-error \
      -halt-on-error

default: all

all: $(BASES:%=$(OUTPUT_DIR)/%.pdf)

define build_pdf
$(OUTPUT_DIR)/$(1).pdf: $(MAINDOC).tex src/*.tex | $(OUTPUT_DIR)
	$(LATEX) $(FLAGS) -jobname="$(1)" "$(2)\input{$$<}"
	find $(OUTPUT_DIR) -name "$(1).*" -not -path "$(OUTPUT_DIR)/$(1).pdf" -delete
	find $(OUTPUT_DIR) -mindepth 1 -type d -delete
endef

$(eval $(call build_pdf,$(BASE_ZH),))
$(eval $(call build_pdf,$(BASE_EN),\def\english{true}))
$(eval $(call build_pdf,$(BASE_ZH_QD),\def\qd{true}))
$(eval $(call build_pdf,$(BASE_ZH_QR),\def\qr{true}))
$(eval $(call build_pdf,$(BASE_ZH_EN),\def\zhen{true}))
$(eval $(call build_pdf,$(BASE_EN_ZH),\def\enzh{true}))

$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

clean:
	rm -rf $(OUTPUT_DIR)
