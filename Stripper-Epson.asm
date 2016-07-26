          ORG $0900

HOME      EQU $FC58
CLREOL    EQU $FC9C
COUT1     EQU $FDF0
RDKEY     EQU $FD0C
TABV      EQU $FB5B
COUT      EQU $FDED
DOS3IO    EQU $03D6
DOS3SYS   EQU $03DC
DOS3UNK   EQU $A060

L0900:    JMP L3DF5
SLOT:     byt $00
CARD:     byt $00
L0905:    byt $00
L0906:    byt $00
L0907:    byt $00
L0908:    byt $00
L0909:    byt $00, $00, $00, $00, $00, $00, $00
L0910:    JSR L5A6F
          byt $00, $00, $00
          JSR L0930
          LDX #$00
L091B:    LDA #$01
          BNE L0922
          JMP L092F
L0922:    JSR L2686
          LDX #$00
          JSR L1919
          LDX #$00
          JMP L091B
L092F:    RTS
L0930:    JSR L5A6F
          byt $04, $00, $00
          LDA SLOT
          BEQ L093E
          JMP L0943
L093E:    LDA #$10
          STA SLOT
L0943:    LDA SLOT
          STA $1C
          TXA
          STA $1D
          LDA #$04
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$0B
          STA $18
          LDA $1D
          ADC #$C0
          STA $19
          LDA ($18,X)
          CMP #$01
          BNE L0968
          JMP L09BE
L0968:    LDA #$0C
          PHA
          LDA #$B7
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA SLOT
          STA $1C
          TXA
          STA $1D
          LDA #$04
          LDY #$1C
          JSR L59CB
          CLC
          LDA $1C
          ADC #$30
          STA $18
          LDA $1D
          ADC #$00
          STA $19
          LDA $19
          PHA
          LDA $18
          PHA
          JSR L5A0A
          adr L23F8
          JSR L5A49
          byt $02
          LDA #$0C
          PHA
          LDA #$E0
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          PHA
          LDA #$02
          PHA
          JSR L5A0A
          adr L23F5
          JSR L5A49
          byt $02
L09BE:    TXA
          PHA
          LDA #$01
          PHA
          JSR L5A0A
          adr L1A67
          JSR L5A49
          byt $02
          STX L5DC9
          STX L5DCA
          STX L5DC7
          STX L5DC8
          STX L5DCB
          STX L5DCC
          LDA #$02
          PHA
          LDA #$C3
          PHA
          JSR L5A0A
          adr L570E
          JSR L5A49
          byt $02
          LDA $08
          STA L606C
          LDA $09
          STA L606D
          LDA L5FEB
          PHA
          LDA L5FEA
          PHA
          JSR L5A0A
          adr L570E
          JSR L5A49
          byt $02
          LDA $08
          STA L606A
          LDA $09
          STA L606B
          CLC
          LDA L5FE0
          ADC #$01
          STA $1C
          LDA L5FE1
          ADC #$00
          STA $1D
          LDA #$0B
          LDY #$1C
          JSR L58DC
          LDA $1C
          STA $80
          LDA $1D
          STA $81
          LDA $81
          PHA
          LDA $80
          PHA
          JSR L5A0A
          adr L570E
          JSR L5A49
          byt $02
          LDA $08
          STA L6068
          LDA $09
          STA L6069
          TXA
          PHA
          PHA
          LDA $81
          PHA
          LDA $80
          PHA
          LDA L6069
          PHA
          LDA L6068
          PHA
          JSR L5A0A
          adr L56BA
          JSR L5A49
          byt $06
          STX $80
          STX $81
          LDA L6068
          STA $82
          LDA L6069
          STA $83
          JMP L0A7A
L0A74:    INC $80
          BNE L0A7A
          INC $81
L0A7A:    LDA $80
          CMP L5FE0
          LDA $81
          SBC L5FE1
          BVS L0A8A
          BMI L0A8F
          BPL L0A8C
L0A8A:    BPL L0A8F
L0A8C:    JMP L0AEB
L0A8F:    CLC
          LDA $82
          STA $1C
          ADC #$0B
          STA $82
          LDA $83
          STA $1D
          ADC #$00
          STA $83
          LDA L5EDA
          PHA
          LDA L5ED9
          PHA
          LDX #$1C
          JSR L5BB8
          JSR L5A0A
          adr L570E
          JSR L5A49
          byt $02
          LDX #$1C
          JSR L5BDD
          LDA $08
          STA ($1C),Y
          LDA $09
          INY
          STA ($1C),Y
          LDA $08
          ORA $09
          BEQ L0ACD
          JMP L0AE8
L0ACD:    LDA #$0D
          PHA
          LDA #$09
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          PHA
          TYA
          PHA
          JSR L5A0A
          adr L23F5
          JSR L5A49
          byt $02
L0AE8:    JMP L0A74
L0AEB:    JSR L23DF
          LDX #$00
          LDA L5FE5
          PHA
          LDA L5FE4
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0D
          PHA
          LDA #$31
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0D
          PHA
          LDA #$4A
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0D
          PHA
          LDA #$64
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0D
          PHA
          LDA #$8D
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0D
          PHA
          LDA #$B1
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0D
          PHA
          LDA #$D8
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0D
          PHA
          LDA #$FF
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0E
          PHA
          LDA #$25
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0E
          PHA
          LDA #$4D
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0E
          PHA
          LDA #$75
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0E
          PHA
          LDA #$96
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0E
          PHA
          LDA #$BA
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          JSR L240D
          LDX #$00
          JSR L23DF
          LDX #$00
          LDA L5FE5
          PHA
          LDA L5FE4
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0E
          PHA
          LDA #$E2
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0F
          PHA
          LDA #$0A
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0F
          PHA
          LDA #$33
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0F
          PHA
          LDA #$5B
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0F
          PHA
          LDA #$84
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0F
          PHA
          LDA #$AC
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0F
          PHA
          LDA #$D3
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$0F
          PHA
          LDA #$FB
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$10
          PHA
          LDA #$21
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$10
          PHA
          LDA #$41
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$10
          PHA
          LDA #$66
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$10
          PHA
          LDA #$8A
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$10
          PHA
          LDA #$B0
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$10
          PHA
          LDA #$D6
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$10
          PHA
          LDA #$F6
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          JSR L240D
          LDX #$00
          RTS
L0CB7:    byt $0A, $0A
          byt "      NO INTERFACE CARD FOUND IN SLOT "
          byt $00, $0A, $0A
          byt "   LIST PROGRAM FOR MORE INFORMATION"
          byt $0A, $0A, $00, $0D, $0D
          byt "NOT ENOUGH MEMORY FOR PROGRAM TO RUN"
          byt $0D, $00
          byt "                 NOTICE"
          byt $0D, $00
          byt "                 ------"
          byt $0D, $0D, $00
          byt " DATA STRIP IS THE GENERIC TERM USED TO"
          byt $0D, $00
          byt "      DESCRIBE THE STORAGE MEDIUM."
          byt $0D, $00
          byt "  SOFTSTRIP(R) IS A TRADEMARKED NAME."
          byt $0D, $00
          byt "  DATA STRIPS MAY BE CREATED AND USED"
          byt $0D, $00
          byt "    FREELY BY INDIVIDUALS; HOWEVER A"
          byt $0D, $00
          byt "  LICENSE IS REQUIRED TO DISTRIBUTE OR"
          byt $0D, $00
          byt "  COMMERCIALIZE DATA STRIPS OR USE THE"
          byt $0D, $00
          byt "          NAME SOFTSTRIP(R)."
          byt $0D, $0D, $0D, $0D, $00
          byt "       PRESS ANY KEY TO CONTINUE"
          byt $0D, $0D, $0D, $00
          byt " COPYRIGHT (C) 1986 CAUZIN SYSTEMS INC."
          byt $00
          byt "  DUE TO THE LIMITATIONS OF DOT MATRIX"
          byt $0D, $00
          byt "PRINTERS, THIS PROGRAM IS ONLY INTENDED"
          byt $0D, $00
          byt " TO BE USED FOR LOW DENSITY DATA STRIP"
          byt $0D, $00
          byt " APPLICATIONS. DATA STRIPS CREATED ON A"
          byt $0D, $00
          byt " DOT MATRIX PRINTER EACH CONTAIN ABOUT"
          byt $0D, $00
          byt "  1000 BYTES OF INFORMATION. MULTIPLE"
          byt $0D, $00
          byt "  DATA STRIPS MAY BE CREATED FROM YOUR"
          byt $0D, $00
          byt "    DISK FILES AND WILL TAKE SEVERAL"
          byt $0D, $00
          byt "            MINUTES TO PRINT."
          byt $0D, $0D, $00
          byt "     THE CAUZIN DATA STRIP PRINTING"
          byt $0D, $00
          byt "     REFERENCE MANUAL WILL PROVIDE"
          byt $0D, $00
          byt "    FURTHER DETAIL INTO THE SPECIFIC"
          byt $0D, $00
          byt "   CAPABILITIES OF YOUR COMPUTER AND"
          byt $0D, $00
          byt "            PRINTING SYSTEM."
          byt $0D, $0D, $0D, $00
          byt "         PRESS ANY KEY TO BEGIN"
          byt $00
L1116:    JSR L5A6F
          byt $0A, $00, $00
          LDA L6068
          STA $88
          LDA L6069
          STA $89
          LDA $88
          STA L5FF4
          LDA $89
          STA L5FF5
          LDA ($88),Y
          STA $86
          INY
          LDA ($88),Y
          STA $87
          STX $80
          STX $81
          JMP L1146
L1140:    INC $80
          BNE L1146
          INC $81
L1146:    LDA L5ED3
          STA $1C
          LDA L5ED4
          STA $1D
          LDA $80
          LDY #$01
          CMP ($1C),Y
          LDA $81
          SBC #$00
          BVS L1160
          BMI L1165
          BPL L1162
L1160:    BPL L1165
L1162:    JMP L11A3
L1165:    LDA L5FE7
          PHA
          LDA L5FE6
          PHA
          CLC
          LDA L5ED3
          ADC #$04
          STA $1C
          LDA L5ED4
          ADC #$00
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          LDA $87
          PHA
          LDA $86
          PHA
          JSR L5A0A
          adr L3E34
          JSR L5A49
          byt $06
          CLC
          LDA $86
          ADC L5FE6
          STA $86
          LDA $87
          ADC L5FE7
          STA $87
          JMP L1140
L11A3:    LDA L5ED3
          STA $1C
          LDA L5ED4
          STA $1D
          LDY #$01
          LDA ($1C),Y
          STA $18
          TXA
          STA $19
          LDA L5FE7
          TAX
          LDA L5FE6
          LDY #$18
          JSR L58DC
          LDA $18
          STA $84
          LDA $19
          STA $85
          TXA
          STA ($88,X)
          LDA $86
          STA L606E
          LDA $87
          STA L606F
          LDA $86
          LDY #$03
          STA ($88),Y
          LDA $87
          INY
          STA ($88),Y
          CLC
          LDA $86
          ADC #$10
          INY
          STA ($88),Y
          LDA $87
          ADC #$00
          INY
          STA ($88),Y
          LDA L5ED3
          STA $1C
          LDA L5ED4
          STA $1D
          LDY #$02
          LDA ($1C),Y
          LDY #$09
          STA ($88),Y
          LDY #$03
          LDA ($1C),Y
          LDY #$0A
          STA ($88),Y
          TXA
          PHA
          PHA
          PHA
          LDA #$10
          PHA
          LDA L606F
          PHA
          LDA L606E
          PHA
          JSR L5A0A
          adr L56BA
          JSR L5A49
          byt $06
          LDA L606E
          STA $1C
          LDA L606F
          STA $1D
          LDA L5ED3
          STA $18
          LDA L5ED4
          STA $19
          CLC
          INY
          LDA ($18),Y
          ADC #$0B
          INY
          STA ($1C),Y
          LDA ($18),Y
          ADC #$00
          INY
          STA ($1C),Y
          LDA L606E
          STA $1C
          LDA L606F
          STA $1D
          LDA L606C
          STA $18
          LDA L606D
          STA $19
          LDA ($18),Y
          LDY #$0C
          STA ($1C),Y
          TXA
          PHA
          LDA #$06
          PHA
          LDA #$5D
          PHA
          LDA #$98
          PHA
          CLC
          LDA L606E
          ADC #$06
          STA $1C
          LDA L606F
          ADC #$00
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L3E34
          JSR L5A49
          byt $06
          CLC
          LDA $84
          ADC #$10
          STA $82
          LDA $85
          ADC #$00
          STA $83
          STY $80
          STX $81
          JMP L12A4
L129E:    INC $80
          BNE L12A4
          INC $81
L12A4:    LDA $80
          CMP L5FE0
          LDA $81
          SBC L5FE1
          BVS L12B4
          BMI L12B9
          BPL L12B6
L12B4:    BPL L12B9
L12B6:    JMP L134B
L12B9:    LDA $83
          PHA
          LDA $82
          PHA
          LDA L6068
          STA $1C
          LDA L6069
          STA $1D
          LDY #$02
          LDA ($1C),Y
          PHA
          DEY
          LDA ($1C),Y
          PHA
          CLC
          LDA $88
          ADC #$0B
          STA $88
          LDA $89
          ADC #$00
          STA $89
          INY
          LDA ($88),Y
          PHA
          DEY
          LDA ($88),Y
          PHA
          JSR L5A0A
          adr L3E34
          JSR L5A49
          byt $06
          CLC
          LDA ($88),Y
          ADC $82
          LDY #$05
          STA ($88),Y
          LDY #$02
          LDA ($88),Y
          ADC $83
          LDY #$06
          STA ($88),Y
          CLC
          LDY #$01
          LDA ($88),Y
          ADC $84
          LDY #$03
          STA ($88),Y
          DEY
          LDA ($88),Y
          ADC $85
          LDY #$04
          STA ($88),Y
          LDA L5ED3
          STA $1C
          LDA L5ED4
          STA $1D
          LDY #$02
          LDA ($1C),Y
          LDY #$09
          STA ($88),Y
          LDY #$03
          LDA ($1C),Y
          LDY #$0A
          STA ($88),Y
          TXA
          STA ($88,X)
          LDY #$03
          LDA ($88),Y
          STA $1C
          INY
          LDA ($88),Y
          STA $1D
          CLC
          LDY #$0C
          LDA ($1C),Y
          ADC $80
          STA ($1C),Y
          JMP L129E
L134B:    RTS
L134C:    JSR L5A6F
          byt $06, $00, $00
          LDA L6068
          STA $1C
          LDA L6069
          STA $1D
          LDY #$05
          LDA ($1C),Y
          STA $80
          INY
          LDA ($1C),Y
          STA $81
          CLC
          LDA L606C
          ADC #$07
          STA $82
          LDA L606D
          ADC #$00
          STA $83
          CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          LDA #$10
          STA ($1C,X)
          CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          LDA L606C
          STA $18
          LDA L606D
          STA $19
          LDY #$01
          LDA ($18),Y
          STA ($1C,X)
          STA $10
          LDA $10
          STA $84
L13B2:    LDA $84
          BNE L13B9
          JMP L1466
L13B9:    LDY #$05
          LDA ($82),Y
          BNE L13C2
          JMP L1456
L13C2:    CLC
          LDA $84
          ADC #$FF
          STA $84
          TXA
          ADC #$FF
          TXA
          PHA
          LDA #$46
          PHA
          LDA $83
          PHA
          LDA $82
          PHA
          LDA $81
          PHA
          LDA $80
          PHA
          JSR L5A0A
          adr L3E34
          JSR L5A49
          byt $06
          CLC
          LDA $80
          ADC #$04
          STA $80
          LDA $81
          ADC #$00
          STA $81
L13F3:    INC $80
          BNE L13F9
          INC $81
L13F9:    LDA ($80,X)
          BNE L1400
          JMP L1412
L1400:    LDA ($80,X)
          CMP #$2C
          BEQ L1409
          JMP L140F
L1409:    TXA
          STA ($80,X)
          JMP L1412
L140F:    JMP L13F3
L1412:    LDA L606C
          STA $1C
          LDA L606D
          STA $1D
          LDY #$06
          LDA ($1C),Y
          BNE L1425
          JMP L1447
L1425:    CLC
          LDA L606C
          ADC #$07
          STA $1C
          LDA L606D
          ADC #$00
          STA $1D
          LDA $82
          CMP $1C
          BNE L143E
          LDA $83
          CMP $1D
L143E:    BEQ L1443
          JMP L1447
L1443:    LDA #$FF
          STA ($80,X)
L1447:    INC $80
          BNE L144D
          INC $81
L144D:    TXA
          STA ($80,X)
          INC $80
          BNE L1456
          INC $81
L1456:    CLC
          LDA $82
          ADC #$46
          STA $82
          LDA $83
          ADC #$00
          STA $83
          JMP L13B2
L1466:    LDA L6068
          STA $1C
          LDA L6069
          STA $1D
          LDA L6068
          STA $18
          LDA L6069
          STA $19
          SEC
          LDA $80
          LDY #$05
          SBC ($18),Y
          STA $10
          LDA $81
          INY
          SBC ($18),Y
          STA $11
          SEC
          LDY #$09
          LDA ($1C),Y
          SBC $10
          STA ($1C),Y
          INY
          LDA ($1C),Y
          SBC $11
          STA ($1C),Y
          LDA L6068
          STA $1C
          LDA L6069
          STA $1D
          LDA $80
          LDY #$05
          STA ($1C),Y
          LDA $81
          INY
          STA ($1C),Y
          RTS
L14B0:    JSR L5A6F
          byt $08, $00, $00
L14B6:    LDA L606C
          STA $1C
          LDA L606D
          STA $1D
          LDY #$01
          LDA ($1C),Y
          BNE L14C9
          JMP L17A9
L14C9:    LDA L5FF4
          STA $86
          LDA L5FF5
          STA $87
          LDA L5DC7
          ORA L5DC8
          BEQ L14DE
          JMP L15AE
L14DE:    LDA L5DC9
          STA $1C
          LDA L5DCA
          STA $1D
          LDA #$46
          LDY #$1C
          JSR L58DC
          CLC
          LDA $1C
          ADC L606C
          STA $18
          LDA $1D
          ADC L606D
          STA $19
          CLC
          LDA $18
          ADC #$07
          STA $84
          LDA $19
          ADC #$00
          STA $85
L150B:    LDY #$05
          LDA ($84),Y
          BEQ L1514
          JMP L152C
L1514:    INC L5DC9
          BNE L151C
          INC L5DCA
L151C:    CLC
          LDA $84
          ADC #$46
          STA $84
          LDA $85
          ADC #$00
          STA $85
          JMP L150B
L152C:    INC L5DC9
          BNE L1534
          INC L5DCA
L1534:    TXA
          PHA
          PHA
          CLC
          LDA $84
          ADC #$05
          STA L5DCD
          LDA $85
          ADC #$00
          STA L5DCE
          LDA L5DCE
          PHA
          LDA L5DCD
          PHA
          JSR L5A0A
          adr L4116
          JSR L5A49
          byt $04
          LDA $08
          STA L5DC7
          LDA $09
          STA L5DC8
          LDA $09
          BMI L1568
          JMP L15A1
L1568:    LDA #$17
          PHA
          LDA #$AA
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA L5DCE
          PHA
          LDA L5DCD
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA L5DC7
          STA $0300
          LDA L5DC8
          STA $0301
          TXA
          PHA
          TYA
          PHA
          JSR L5A0A
          adr L23F5
          JSR L5A49
          byt $02
L15A1:    LDY #$02
          LDA ($84),Y
          STA L5DCB
          INY
          LDA ($84),Y
          STA L5DCC
L15AE:    LDY #$09
          LDA ($86),Y
          CMP L5DCB
          INY
          LDA ($86),Y
          SBC L5DCC
          BCC L15C0
          JMP L15CD
L15C0:    DEY
          LDA ($86),Y
          STA $82
          INY
          LDA ($86),Y
          STA $83
          JMP L15D7
L15CD:    LDA L5DCB
          STA $82
          LDA L5DCC
          STA $83
L15D7:    LDA $83
          PHA
          LDA $82
          PHA
          LDY #$06
          LDA ($86),Y
          PHA
          DEY
          LDA ($86),Y
          PHA
          LDA L5DC8
          PHA
          LDA L5DC7
          PHA
          JSR L5A0A
          adr L4B48
          JSR L5A49
          byt $06
          LDA $08
          STA $80
          LDA $09
          STA $81
          LDA $08
          CMP #$01
          LDA $09
          SBC #$00
          BVS L160E
          BMI L160E
          JMP L1647
L160E:    LDA #$17
          PHA
          LDA #$D0
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA L5DCE
          PHA
          LDA L5DCD
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA L5DC7
          STA $0300
          LDA L5DC8
          STA $0301
          TXA
          PHA
          TYA
          PHA
          JSR L5A0A
          adr L23F5
          JSR L5A49
          byt $02
L1647:    LDA #$01
          STA ($86,X)
          CLC
          LDY #$05
          LDA ($86),Y
          ADC $80
          STA ($86),Y
          INY
          LDA ($86),Y
          ADC $81
          STA ($86),Y
          SEC
          LDY #$09
          LDA ($86),Y
          SBC $80
          STA ($86),Y
          INY
          LDA ($86),Y
          SBC $81
          STA ($86),Y
          SEC
          LDA L5DCB
          SBC $80
          STA L5DCB
          LDA L5DCC
          SBC $81
          STA L5DCC
          LDA L5DCB
          ORA L5DCC
          BEQ L1687
          JMP L1705
L1687:    LDA L5DC8
          PHA
          LDA L5DC7
          PHA
          JSR L5A0A
          adr L4D7B
          JSR L5A49
          byt $02
          STX L5DC7
          STX L5DC8
          LDA L606C
          STA $1C
          LDA L606D
          STA $1D
          CLC
          LDA ($1C),Y
          ADC #$FF
          STA ($1C),Y
          STA $18
          TXA
          ADC #$FF
          STA $19
          LDA $18
          ORA $19
          BEQ L16BF
          JMP L1705
L16BF:    STX L5DC9
          STX L5DCA
          LDY #$03
          LDA ($86),Y
          STA $1C
          INY
          LDA ($86),Y
          STA $1D
          SEC
          DEY
          LDA ($1C),Y
          LDY #$09
          SBC ($86),Y
          LDY #$03
          STA ($1C),Y
          INY
          LDA ($1C),Y
          LDY #$0A
          SBC ($86),Y
          LDY #$04
          STA ($1C),Y
          INY
          LDA ($86),Y
          LDY #$07
          STA ($86),Y
          DEY
          LDA ($86),Y
          LDY #$08
          STA ($86),Y
          LDY #$01
          LDA ($86),Y
          LDY #$05
          STA ($86),Y
          LDY #$02
          LDA ($86),Y
          LDY #$06
          STA ($86),Y
L1705:    LDY #$03
          LDA ($86),Y
          STA $1C
          INY
          LDA ($86),Y
          STA $1D
          LDA L606C
          STA $18
          LDA L606D
          STA $19
          LDY #$0C
          LDA ($1C),Y
          LDY #$02
          CMP ($18),Y
          BNE L1727
          JMP L1739
L1727:    INY
          LDA ($86),Y
          STA $1C
          INY
          LDA ($86),Y
          STA $1D
          LDY #$0C
          LDA ($1C),Y
          ORA #$80
          STA ($1C),Y
L1739:    LDY #$09
          LDA ($86),Y
          INY
          ORA ($86),Y
          BEQ L1745
          JMP L17A6
L1745:    LDY #$05
          LDA ($86),Y
          LDY #$07
          STA ($86),Y
          DEY
          LDA ($86),Y
          LDY #$08
          STA ($86),Y
          LDY #$01
          LDA ($86),Y
          LDY #$05
          STA ($86),Y
          LDY #$02
          LDA ($86),Y
          LDY #$06
          STA ($86),Y
          CLC
          LDA L5FF4
          ADC #$0B
          STA L5FF4
          LDA L5FF5
          ADC #$00
          STA L5FF5
          LDA L5FE0
          STA $1C
          LDA L5FE1
          STA $1D
          LDA #$0B
          LDY #$1C
          JSR L58DC
          CLC
          LDA $1C
          ADC L6068
          STA $18
          LDA $1D
          ADC L6069
          STA $19
          LDA L5FF4
          CMP $18
          BNE L17A1
          LDA L5FF5
          CMP $19
L17A1:    BNE L17A6
          JMP L17A9
L17A6:    JMP L14B6
L17A9:    RTS
L17AA:    byt $0A, $0A
          byt "ERROR DURING OPEN, PROGRAM ABORTED"
          byt $0A, $00, $0A, $0A
          byt "ERROR DURING READ, PROGRAM ABORTED"
          byt $0A, $00
L17F6:    JSR L5A6F
          byt $00, $00, $00
          PHA
          LDY #$09
          LDA ($04),Y
          PHA
          LDA CARD
          STA $1C
          TXA
          STA $1D
          LDA #$02
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$58
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18,X)
          STA $08
          LDA ($18),Y
          STA $09
          JSR L5D70
          JSR L5A49
          byt $02
          RTS
L182E:    JSR L5A6F
          byt $04, $00, $00
          LDY #$0B
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          STX $82
          STX $83
          JMP L184C
L1846:    INC $82
          BNE L184C
          INC $83
L184C:    LDA $82
          CMP $80
          LDA $83
          SBC $81
          BVS L185A
          BMI L185F
          BPL L185C
L185A:    BPL L185F
L185C:    JMP L1872
L185F:    TXA
          PHA
          LDY #$09
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          JMP L1846
L1872:    RTS
L1873:    JSR L5A6F
          byt $02, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
L1884:    LDA ($80,X)
          BNE L188B
          JMP L18AD
L188B:    CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          TXA
          PHA
          LDA ($1C,X)
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          JMP L1884
L18AD:    RTS
L18AE:    JSR L5A6F
          byt $04, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          INY
          LDA ($04),Y
          STA $82
          INY
          LDA ($04),Y
          STA $83
L18C9:    LDA ($82,X)
          BNE L18D0
          JMP L1918
L18D0:    CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          CLC
          LDA $82
          STA $18
          ADC #$01
          STA $82
          LDA $83
          STA $19
          ADC #$00
          STA $83
          LDA ($18,X)
          STA ($1C,X)
          STA $10
          LDA $10
          CMP #$2C
          BEQ L1901
          JMP L1915
L1901:    CLC
          LDA $80
          ADC #$FF
          STA $80
          LDA $81
          ADC #$FF
          STA $81
          LDA #$20
          STA ($80,X)
          JMP L1918
L1915:    JMP L18C9
L1918:    RTS
L1919:    JSR L5A6F
          byt $06, $00, $00
          STX $84
          CLC
          LDA L606C
          ADC #$0C
          STA $80
          LDA L606D
          ADC #$00
          STA $81
          LDA #$98
          STA $82
          LDA #$5D
          STA $83
          JMP L193D
L193B:    INC $84
L193D:    LDA $84
          CMP #$06
          BCC L1946
          JMP L19A3
L1946:    LDA ($80,X)
          STA $08
          TXA
          STA $09
          JMP L1991
L1950:    CLC
          LDA $82
          STA $1C
          ADC #$01
          STA $82
          LDA $83
          STA $1D
          ADC #$00
          STA $83
          LDA #$20
          STA ($1C,X)
          JMP L19A0
L1968:    CLC
          LDA $82
          STA $1C
          ADC #$01
          STA $82
          LDA $83
          STA $1D
          ADC #$00
          STA $83
          CLC
          LDA $80
          STA $18
          ADC #$01
          STA $80
          LDA $81
          STA $19
          ADC #$00
          STA $81
          LDA ($18,X)
          STA ($1C,X)
          JMP L19A0
L1991:    JSR L5B0E
          byt $02, $00, $2C, $00
          adr L1950
          adr $0000
          adr L1950
          adr L1968
L19A0:    JMP L193B
L19A3:    STX L5D9F
          TXA
          PHA
          PHA
          PHA
          LDA #$14
          PHA
          JSR L5A0A
          adr L23E8
          JSR L5A49
          byt $04
          LDA #$1A
          PHA
          LDA #$37
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          PHA
          LDA #$28
          PHA
          LDA #$5D
          PHA
          LDA #$9F
          PHA
          JSR L5A0A
          adr L224A
          JSR L5A49
          byt $04
          JSR L1B45
          LDX #$00
L19DD:    LDA L606C
          STA $1C
          LDA L606D
          STA $1D
          LDY #$01
          LDA ($1C),Y
          BNE L19F0
          JMP L1A36
L19F0:    JSR L1116
          LDX #$00
          LDA L606C
          STA $1C
          LDA L606D
          STA $1D
          LDY #$04
          LDA ($1C),Y
          AND #$7F
          STA $18
          LDA $18
          CMP #$01
          BEQ L1A10
          JMP L1A15
L1A10:    JSR L134C
          LDX #$00
L1A15:    JSR L14B0
          LDX #$00
          LDA #$5D
          PHA
          LDA #$9F
          PHA
          JSR L5A0A
          adr L1CEB
          JSR L5A49
          byt $02
          JSR L356E
          LDX #$00
          JSR L1E5B
          LDX #$00
          JMP L19DD
L1A36:    RTS
L1A37:    byt " ENTER A TITLE FOR THESE DATA STRIPS    "
          byt $00
L1A60:    JSR L5A6F
          byt $00, $00, $00
          RTS
L1A67:    JSR L5A6F
          byt $00, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $1C
          TXA
          STA $1D
          TYA
          LDY #$1C
          JSR L58DC
          CLC
          LDA $1C
          ADC #$70
          STA L5ED3
          LDA $1D
          ADC #$60
          STA L5ED4
          RTS
L1A8C:    JSR L5A6F
          byt $00, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $08
          TXA
          STA $09
          LDA #$01
          DEY
          JSR L59CB
          RTS
L1AA2:    JSR L5A6F
          byt $00, $FE, $FF
          LDY #$09
          LDA ($04),Y
          LDY #$FE
          STA ($06),Y
          LDY #$0A
          LDA ($04),Y
          LDY #$FF
          STA ($06),Y
          TXA
          PHA
          LDA #$1B
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          PHA
          LDA #$5A
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          PHA
          LDY #$FE
          LDA ($06),Y
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          PHA
          LDY #$FF
          LDA ($06),Y
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          RTS
L1AF2:    JSR L5A6F
          byt $02, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          TXA
          PHA
          LDA #$0D
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          LDA $80
          ORA $81
          BNE L1B1A
          JMP L1B44
L1B1A:    TXA
          PHA
          LDA #$1B
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          PHA
          LDA #$4A
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          LDA $81
          PHA
          LDA $80
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
L1B44:    RTS
L1B45:    JSR L5A6F
          byt $00, $00, $00
          LDA #$1B
          PHA
          LDA #$5B
          PHA
          JSR L5A0A
          adr L1873
          JSR L5A49
          byt $02
          RTS
L1B5B:    byt $1B
          byt "@"
          byt $1B
          byt "!"
          byt $02, $1B
          byt "2"
          byt $1B
          byt "U1"
          byt $00
L1B66:    JSR L5A6F
          byt $00, $00, $00
          RTS
L1B6D:    JSR L5A6F
          byt $0E, $00, $00
          LDY #$0D
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          SEC
          LDA L5FEE
          LDY #$0B
          SBC ($04),Y
          STA $8A
          LDA L5FEF
          INY
          SBC ($04),Y
          STA $8B
          CLC
          DEY
          LDA ($04),Y
          ADC $8A
          STA $1C
          INY
          LDA ($04),Y
          ADC $8B
          STA $1D
          LDA L5E47
          STA $18
          TXA
          STA $19
          LDA $1D
          TAX
          LDA $1C
          LDY #$18
          JSR L58DC
          CLC
          LDA $18
          LDY #$09
          ADC ($04),Y
          STA $1C
          LDA $19
          INY
          ADC ($04),Y
          STA $1D
          SEC
          LDA $1C
          SBC $8A
          STA $88
          LDA $1D
          SBC $8B
          STA $89
          CLC
          LDA $88
          STA $1C
          ADC #$01
          STA $88
          LDA $89
          STA $1D
          ADC #$00
          STA $89
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L1AA2
          JSR L5A49
          byt $02
          LDY #$0A
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          TXA
          PHA
          PHA
          JSR L5A0A
          adr L182E
          JSR L5A49
          byt $04
          LDY #$0B
          LDA ($04),Y
          STA $82
          INY
          LDA ($04),Y
          STA $83
          LDA $80
          STA $8C
          LDA $81
          STA $8D
L1C16:    CLC
          LDA $82
          STA $1C
          ADC #$FF
          STA $82
          LDA $83
          STA $1D
          ADC #$FF
          STA $83
          LDA $1C
          ORA $1D
          BNE L1C30
          JMP L1C52
L1C30:    CLC
          LDA $8C
          STA $1C
          ADC #$01
          STA $8C
          LDA $8D
          STA $1D
          ADC #$00
          STA $8D
          TXA
          PHA
          LDA ($1C,X)
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          JMP L1C16
L1C52:    LDA #$01
          STA $84
          STX $85
          JMP L1C61
L1C5B:    INC $84
          BNE L1C61
          INC $85
L1C61:    LDA $84
          CMP L5E47
          LDA $85
          SBC #$00
          BVS L1C70
          BMI L1C75
          BPL L1C72
L1C70:    BPL L1C75
L1C72:    JMP L1CD9
L1C75:    LDA $8B
          PHA
          LDA $8A
          PHA
          TXA
          PHA
          PHA
          JSR L5A0A
          adr L182E
          JSR L5A49
          byt $04
          LDY #$0B
          LDA ($04),Y
          STA $82
          INY
          LDA ($04),Y
          STA $83
          LDA $80
          STA $8C
          LDA $81
          STA $8D
L1C9A:    CLC
          LDA $82
          STA $1C
          ADC #$FF
          STA $82
          LDA $83
          STA $1D
          ADC #$FF
          STA $83
          LDA $1C
          ORA $1D
          BNE L1CB4
          JMP L1CD6
L1CB4:    CLC
          LDA $8C
          STA $1C
          ADC #$01
          STA $8C
          LDA $8D
          STA $1D
          ADC #$00
          STA $8D
          TXA
          PHA
          LDA ($1C,X)
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          JMP L1C9A
L1CD6:    JMP L1C5B
L1CD9:    LDA L5FE9
          PHA
          LDA L5FE8
          PHA
          JSR L5A0A
          adr L1AF2
          JSR L5A49
          byt $02
          RTS
L1CEB:    JSR L5A6F
          byt $06, $00, $00
          STX L5E47
          LDA L6068
          STA $82
          LDA L6069
          STA $83
L1CFE:    CLC
          LDA $82
          STA $1C
          ADC #$0B
          STA $82
          LDA $83
          STA $1D
          ADC #$00
          STA $83
          LDA ($1C,X)
          BNE L1D16
          JMP L1D1C
L1D16:    INC L5E47
          JMP L1CFE
L1D1C:    JSR L1A60
          LDX #$00
          LDY #$0A
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L1873
          JSR L5A49
          byt $02
          LDY #$0A
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L56F0
          JSR L5A49
          byt $02
          SEC
          LDA #$3C
          SBC $08
          STA $1C
          TXA
          SBC $09
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          TXA
          PHA
          LDA #$20
          PHA
          JSR L5A0A
          adr L182E
          JSR L5A49
          byt $04
          LDA #$1E
          PHA
          LDA #$50
          PHA
          JSR L5A0A
          adr L1873
          JSR L5A49
          byt $02
          LDA L606B
          PHA
          LDA L606A
          PHA
          LDA L606C
          STA $1C
          LDA L606D
          STA $1D
          TXA
          PHA
          LDY #$05
          LDA ($1C),Y
          PHA
          JSR L5A0A
          adr L20FE
          JSR L5A49
          byt $04
          LDA L606B
          PHA
          LDA L606A
          PHA
          JSR L5A0A
          adr L1873
          JSR L5A49
          byt $02
          LDA #$1E
          PHA
          LDA #$56
          PHA
          JSR L5A0A
          adr L1873
          JSR L5A49
          byt $02
          LDA L606B
          PHA
          LDA L606A
          PHA
          LDA L606C
          STA $1C
          LDA L606D
          STA $1D
          TXA
          PHA
          LDY #$03
          LDA ($1C),Y
          PHA
          JSR L5A0A
          adr L20FE
          JSR L5A49
          byt $04
          LDA L606B
          PHA
          LDA L606A
          PHA
          JSR L5A0A
          adr L1873
          JSR L5A49
          byt $02
          PHA
          LDA #$24
          PHA
          JSR L5A0A
          adr L1AF2
          JSR L5A49
          byt $02
          JSR L20F7
          LDX #$00
          STX $80
          LDA #$0A
          STA $84
          LDA #$5F
          STA $85
          JMP L1E0A
L1E08:    INC $80
L1E0A:    LDA $80
          CMP L5FC4
          TXA
          SBC L5FC5
          BVS L1E19
          BMI L1E1E
          BPL L1E1B
L1E19:    BPL L1E1E
L1E1B:    JMP L1E4F
L1E1E:    LDA $85
          PHA
          LDA $84
          PHA
          LDA L5F07
          PHA
          LDA L5F06
          PHA
          LDA L5FCB
          PHA
          LDA L5FCA
          PHA
          JSR L5A0A
          adr L1B6D
          JSR L5A49
          byt $06
          CLC
          LDA $84
          ADC L5F06
          STA $84
          LDA $85
          ADC L5F07
          STA $85
          JMP L1E08
L1E4F:    RTS
L1E50:    byt "Page "
          byt $00
          byt " of "
          byt $00
L1E5B:    JSR L5A6F
          byt $0E, $FA, $FF
          JSR L20F7
          LDX #$00
          STX $80
          LDA #$DD
          STA $88
          LDA #$5E
          STA $89
          JMP L1E75
L1E73:    INC $80
L1E75:    LDA $80
          CMP L5EF5
          TXA
          SBC L5EF6
          BVS L1E84
          BMI L1E89
          BPL L1E86
L1E84:    BPL L1E89
L1E86:    JMP L1EBA
L1E89:    LDA $89
          PHA
          LDA $88
          PHA
          LDA L5EDC
          PHA
          LDA L5EDB
          PHA
          LDA L5FC7
          PHA
          LDA L5FC6
          PHA
          JSR L5A0A
          adr L1B6D
          JSR L5A49
          byt $06
          CLC
          LDA $88
          ADC L5EDB
          STA $88
          LDA $89
          ADC L5EDC
          STA $89
          JMP L1E73
L1EBA:    TXA
          PHA
          PHA
          JSR L5A0A
          adr L1AF2
          JSR L5A49
          byt $02
          PHA
          LDA #$20
          PHA
          TXA
          PHA
          LDA #$50
          PHA
          LDA L606A
          STA $82
          LDA L606B
          STA $83
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L56BA
          JSR L5A49
          byt $06
          LDY #$50
          STA ($82),Y
          STX $80
          LDA L606A
          STA $82
          LDA L606B
          STA $83
          LDA L606C
          STA $1C
          LDA L606D
          STA $1D
          LDY #$04
          LDA ($1C),Y
          STA $86
          JMP L1F0D
L1F0B:    INC $80
L1F0D:    LDA $80
          CMP L5E47
          BCC L1F17
          JMP L1F7E
L1F17:    LDA $83
          PHA
          LDA $82
          PHA
          CLC
          LDA $86
          STA $1C
          ADC #$01
          STA $86
          TXA
          STA $1D
          ADC #$00
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L20FE
          JSR L5A49
          byt $04
          LDA $08
          STA $84
          LDA $09
          STA $85
L1F42:    CLC
          LDA $84
          STA $1C
          ADC #$01
          STA $84
          LDA $85
          STA $1D
          ADC #$00
          STA $85
          LDA ($1C,X)
          BNE L1F5A
          JMP L1F5D
L1F5A:    JMP L1F42
L1F5D:    CLC
          LDA $84
          ADC #$FF
          STA $84
          LDA $85
          ADC #$FF
          STA $85
          LDA #$20
          STA ($84,X)
          CLC
          LDA $82
          ADC #$08
          STA $82
          LDA $83
          ADC #$00
          STA $83
          JMP L1F0B
L1F7E:    JSR L1A60
          LDX #$00
          LDA L606B
          PHA
          LDA L606A
          PHA
          JSR L5A0A
          adr L1873
          JSR L5A49
          byt $02
          PHA
          LDA #$48
          PHA
          JSR L5A0A
          adr L1AF2
          JSR L5A49
          byt $02
          PHA
          LDA #$20
          PHA
          TXA
          PHA
          LDA #$50
          PHA
          LDA L606A
          STA $82
          LDA L606B
          STA $83
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L56BA
          JSR L5A49
          byt $06
          CLC
          LDA L606C
          ADC #$07
          STA $8A
          LDA L606D
          ADC #$00
          STA $8B
          CLC
          LDA L606C
          ADC #$C3
          STA $8C
          LDA L606D
          ADC #$02
          STA $8D
L1FE1:    LDA $8A
          CMP $8C
          LDA $8B
          SBC $8D
          BCC L1FEE
          JMP L208A
L1FEE:    LDY #$05
          LDA ($8A),Y
          BNE L1FF7
          JMP L207A
L1FF7:    CLC
          LDA $8A
          ADC #$05
          STA $1C
          LDA $8B
          ADC #$00
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L18AE
          JSR L5A49
          byt $04
          LDA $82
          CMP L606A
          BNE L2025
          LDA $83
          CMP L606B
L2025:    BEQ L202A
          JMP L203A
L202A:    CLC
          LDA $82
          ADC #$28
          STA $82
          LDA $83
          ADC #$00
          STA $83
          JMP L207A
L203A:    LDA L606B
          PHA
          LDA L606A
          PHA
          JSR L5A0A
          adr L1873
          JSR L5A49
          byt $02
          PHA
          LDA #$24
          PHA
          JSR L5A0A
          adr L1AF2
          JSR L5A49
          byt $02
          PHA
          LDA #$20
          PHA
          TXA
          PHA
          LDA #$50
          PHA
          LDA L606A
          STA $82
          LDA L606B
          STA $83
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L56BA
          JSR L5A49
          byt $06
L207A:    CLC
          LDA $8A
          ADC #$46
          STA $8A
          LDA $8B
          ADC #$00
          STA $8B
          JMP L1FE1
L208A:    LDA $82
          CMP L606A
          BNE L2096
          LDA $83
          CMP L606B
L2096:    BNE L209B
          JMP L20B4
L209B:    LDA L606A
          STA $82
          LDA L606B
          STA $83
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L1873
          JSR L5A49
          byt $02
L20B4:    TXA
          PHA
          PHA
          JSR L5A0A
          adr L1AF2
          JSR L5A49
          byt $02
          PHA
          LDA #$0C
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          LDA L606C
          STA $1C
          LDA L606D
          STA $1D
          CLC
          LDY #$04
          LDA ($1C),Y
          ADC L5FE0
          STA ($1C),Y
          LDA L606C
          STA $1C
          LDA L606D
          STA $1D
          CLC
          INY
          LDA ($1C),Y
          ADC #$01
          STA ($1C),Y
          TXA
          ADC #$00
          RTS
L20F7:    JSR L5A6F
          byt $00, $00, $00
          RTS
L20FE:    JSR L5A6F
          byt $06, $00, $00
          LDY #$0A
          LDA ($04),Y
          BMI L2111
          STX $1C
          STX $1D
          JMP L2117
L2111:    LDA #$01
          STA $1C
          STX $1D
L2117:    LDA $1C
          STA $84
          LDA $1C
          BNE L2122
          JMP L2130
L2122:    SEC
          TXA
          LDY #$09
          SBC ($04),Y
          STA ($04),Y
          TXA
          INY
          SBC ($04),Y
          STA ($04),Y
L2130:    LDY #$0B
          LDA ($04),Y
          STA $82
          INY
          LDA ($04),Y
          STA $83
          LDA $82
          STA $80
          LDA $83
          STA $81
L2143:    CLC
          LDA $82
          STA $1C
          ADC #$01
          STA $82
          LDA $83
          STA $1D
          ADC #$00
          STA $83
          LDY #$09
          LDA ($04),Y
          STA $18
          INY
          LDA ($04),Y
          STA $19
          TYA
          LDY #$18
          JSR L592A
          CLC
          LDA $18
          ADC #$30
          STA $10
          LDA $19
          ADC #$00
          STA $11
          LDA $10
          STA ($1C,X)
          LDY #$09
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          STA $1D
          TYA
          LDY #$1C
          JSR L590D
          LDA $1C
          LDY #$09
          STA ($04),Y
          LDA $1D
          INY
          STA ($04),Y
          TXA
          CMP $1C
          SBC $1D
          BVS L219B
          BPL L219E
L219B:    JMP L2143
L219E:    LDA $84
          BNE L21A5
          JMP L21BA
L21A5:    CLC
          LDA $82
          STA $1C
          ADC #$01
          STA $82
          LDA $83
          STA $1D
          ADC #$00
          STA $83
          LDA #$2D
          STA ($1C,X)
L21BA:    CLC
          LDA $82
          STA $1C
          ADC #$FF
          STA $82
          LDA $83
          STA $1D
          ADC #$FF
          STA $83
          TXA
          STA ($1C,X)
L21CE:    LDA $80
          CMP $82
          LDA $81
          SBC $83
          BCC L21DB
          JMP L220C
L21DB:    LDA ($80,X)
          STA $84
          CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          LDA ($82,X)
          STA ($1C,X)
          CLC
          LDA $82
          STA $1C
          ADC #$FF
          STA $82
          LDA $83
          STA $1D
          ADC #$FF
          STA $83
          LDA $84
          STA ($1C,X)
          JMP L21CE
L220C:    LDY #$0B
          LDA ($04),Y
          STA $08
          INY
          LDA ($04),Y
          STA $09
          RTS
L2218:    JSR L5A6F
          byt $00, $FF, $FF
          JSR L2401
          LDX #$00
          LDA $08
          LDY #$FF
          STA ($06),Y
          LDA $08
          CMP #$03
          BEQ L2232
          JMP L2240
L2232:    TXA
          PHA
          LDA #$02
          PHA
          JSR L5A0A
          adr L23F5
          JSR L5A49
          byt $02
L2240:    LDY #$FF
          LDA ($06),Y
          STA $08
          TXA
          STA $09
          RTS
L224A:    JSR L5A6F
          byt $06, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          INY
          LDA ($04),Y
          STA $82
          INY
          LDA ($04),Y
          STA $83
          LDA $80
          STA $84
          LDA $81
          STA $85
          LDA $82
          ORA $83
          BNE L2276
          JMP L2283
L2276:    CLC
          LDA $82
          ADC #$FF
          STA $82
          LDA $83
          ADC #$FF
          STA $83
L2283:    JSR L2401
          LDX #$00
          LDA $08
          STA ($84,X)
          LDA $08
          CMP #$0D
          BNE L2295
          JMP L232A
L2295:    LDA ($84,X)
          STA $08
          TXA
          STA $09
          JMP L2318
L229F:    LDA $80
          CMP $84
          LDA $81
          SBC $85
          BCC L22AC
          JMP L22CE
L22AC:    CLC
          LDA $84
          ADC #$FF
          STA $84
          LDA $85
          ADC #$FF
          STA $85
          INC $82
          BNE L22BF
          INC $83
L22BF:    LDA #$23
          PHA
          LDA #$36
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
L22CE:    JMP L2327
L22D1:    LDA $82
          ORA $83
          BNE L22DA
          JMP L2307
L22DA:    LDA ($84,X)
          CMP #$20
          BCS L22E3
          JMP L2304
L22E3:    TXA
          PHA
          LDA ($84,X)
          PHA
          JSR L5A0A
          adr L23F8
          JSR L5A49
          byt $02
          INC $84
          BNE L22F7
          INC $85
L22F7:    CLC
          LDA $82
          ADC #$FF
          STA $82
          LDA $83
          ADC #$FF
          STA $83
L2304:    JMP L2315
L2307:    TXA
          PHA
          LDA #$07
          PHA
          JSR L5A0A
          adr L23F8
          JSR L5A49
          byt $02
L2315:    JMP L2327
L2318:    JSR L5B0E
          byt $02, $00, $08, $00
          adr L229F
          adr $007F
          adr L229F
          adr L22D1
L2327:    JMP L2283
L232A:    TXA
          STA ($84,X)
          LDA $80
          STA $08
          LDA $81
          STA $09
          RTS
L2336:    byt $08
          byt " "
          byt $08, $00
L233A:    JSR L5A6F
          byt $00, $00, $00
          LDA #$02
          PHA
          TXA
          PHA
          JSR L5A0A
          adr L224A
          JSR L5A49
          byt $02
          LDA $09
          PHA
          LDA $08
          PHA
          JSR L5A0A
          adr L5622
          JSR L5A49
          byt $02
          RTS
L235E:    JSR L5A6F
          byt $02, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
L236F:    LDA ($80,X)
          BNE L2376
          JMP L2398
L2376:    CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          TXA
          PHA
          LDA ($1C,X)
          PHA
          JSR L5A0A
          adr L23F8
          JSR L5A49
          byt $02
          JMP L236F
L2398:    RTS
L2399:    JSR L5A6F
          byt $00, $F9, $FF
          CLC
          LDA #$F9
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          LDY #$0A
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L20FE
          JSR L5A49
          byt $04
          CLC
          LDA #$F9
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          RTS
L23DF:    JMP HOME
L23E2:    JMP CLREOL
L23E5:    byt "LB"
          byt $FC
L23E8:    LDY #$02
          LDA ($02),Y
          STA $24
          LDY #$00
          LDA ($02),Y
          JMP TABV
L23F5:    JMP ($03F2)
L23F8:    LDY #$00
          LDA ($02),Y
          ORA #$80
          JMP COUT1
L2401:    JSR RDKEY
L2404:    AND #$7F
          STA $08
          LDX #$00
          STX $09
          RTS
L240D:    LDA $C000
          BPL L240D
          STA $C010
          BMI L2404
L2417:    JSR L5A6F
          byt $00, $FC, $FE
          TYA
          PHA
          TXA
          PHA
          CLC
          LDA #$FC
          ADC $06
          STA $1C
          LDA #$FF
          ADC $07
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          LDY #$0A
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L4B48
          JSR L5A49
          byt $06
          LDA $08
          LDY #$FE
          STA ($06),Y
          LDA $09
          INY
          STA ($06),Y
          LDY #$0B
          LDA ($04),Y
          STA $08
          TXA
          STA $09
          JMP L24FC
L245D:    CLC
          LDA #$FE
          ADC $06
          STA $1C
          LDA #$FF
          ADC $07
          STA $1D
          CLC
          LDA ($1C,X)
          ADC #$04
          STA $08
          LDY #$01
          LDA ($1C),Y
          ADC #$00
          STA $09
          RTS
L247A:    CLC
          LDA #$FC
          ADC $06
          STA $1C
          LDA #$FF
          ADC $07
          STA $1D
          CLC
          LDA ($1C,X)
          ADC #$02
          STA $08
          LDY #$01
          LDA ($1C),Y
          ADC #$00
          STA $09
          RTS
L2497:    LDA #$01
          PHA
          TXA
          PHA
          CLC
          LDA #$FC
          ADC $06
          STA $1C
          LDA #$FF
          ADC $07
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          LDY #$0A
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L4B48
          JSR L5A49
          byt $06
          LDA $08
          LDY #$FC
          STA ($06),Y
          LDA $09
          INY
          STA ($06),Y
          TXA
          CMP $08
          SBC $09
          BCC L24D6
          JMP L24F0
L24D6:    CLC
          INY
          LDA ($06),Y
          LDY #$FC
          ADC ($06),Y
          LDY #$FE
          STA ($06),Y
          INY
          LDA ($06),Y
          LDY #$FD
          ADC ($06),Y
          LDY #$FF
          STA ($06),Y
          JMP L2497
L24F0:    LDY #$FE
          LDA ($06),Y
          STA $08
          INY
          LDA ($06),Y
          STA $09
          RTS
L24FC:    JSR L5B0E
          byt $03, $00, $04, $00
          adr L245D
          adr $0001
          adr L247A
          adr $0002
          adr L247A
          adr L2497
          RTS
L2510:    JSR L5A6F
          byt $00, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $08
          TXA
          STA $09
          JMP L253C
L2522:    LDA #$01
          STA $08
          STX $09
          RTS
L2529:    LDA #$04
          STA $08
          STX $09
          RTS
L2530:    LDA #$02
          STA $08
          STX $09
          RTS
L2537:    STX $08
          STX $09
          RTS
L253C:    JSR L589C
          byt $00, $00, $05, $00
          adr L2537
          adr L2522
          adr L2529
          adr L2529
          adr L2537
          adr L2530
          RTS
L2550:    JSR L5A6F
          byt $04, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          TXA
          PHA
          PHA
          CLC
          LDA $80
          ADC #$05
          STA $1C
          LDA $81
          ADC #$00
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L4116
          JSR L5A49
          byt $04
          LDA $08
          STA $82
          LDA $09
          STA $83
          LDA $09
          BMI L258F
          JMP L2594
L258F:    STX $08
          STX $09
          RTS
L2594:    TXA
          PHA
          LDA #$02
          PHA
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L52BD
          JSR L5A49
          byt $04
          LDA $08
          AND #$7F
          STA $1C
          LDA $09
          AND #$00
          STA $1D
          LDA $1C
          STA ($80),Y
          TXA
          PHA
          LDA ($80),Y
          PHA
          JSR L5A0A
          adr L2510
          JSR L5A49
          byt $02
          LDA $08
          STA ($80,X)
          TXA
          PHA
          LDA ($80),Y
          PHA
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L2417
          JSR L5A49
          byt $04
          LDA $08
          INY
          STA ($80),Y
          LDA $09
          INY
          STA ($80),Y
          TXA
          INY
          STA ($80),Y
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L4D7B
          JSR L5A49
          byt $02
          STY $08
          STX $09
          RTS
L2600:    byt "NORMAL"
          byt $00
          byt " HIGH "
          byt $00
          byt "  LOW "
          byt $00
L2615:    JSR L5A6F
          byt $00, $00, $00
          LDA L5F08
          CMP #$01
          BNE L2627
          LDA L5F09
          CMP #$00
L2627:    BEQ L262C
          JMP L2634
L262C:    LDA #$05
          STA L5E55
          JMP L2639
L2634:    LDA #$04
          STA L5E55
L2639:    LDA L5E55
          STA L5E54
          JSR L23DF
          LDX #$00
          TXA
          PHA
          LDA #$06
          PHA
          TXA
          PHA
          PHA
          JSR L5A0A
          adr L23E8
          JSR L5A49
          byt $04
          LDA #$26
          PHA
          LDA #$6A
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA L5E55
          STA $22
          RTS
L266A:    byt "DATA STRIP PRINTING PROGRAM"
          byt $00
L2686:    JSR L5A6F
          byt $00, $FF, $FF
          PHA
          PHA
          LDA #$02
          PHA
          LDA #$C3
          PHA
          LDA L606D
          PHA
          LDA L606C
          PHA
          JSR L5A0A
          adr L56BA
          JSR L5A49
          byt $06
          LDA L606C
          STA $1C
          LDA L606D
          STA $1D
          LDA L606C
          STA $18
          LDA L606D
          STA $19
          TYA
          LDY #$05
          STA ($18),Y
          DEY
          STA ($1C),Y
          STX L5E52
          TXA
          PHA
          PHA
          JSR L5A0A
          adr L1A67
          JSR L5A49
          byt $02
          STX L5E53
          JSR L2615
          LDX #$00
          JSR L2755
          LDX #$00
          TXA
          PHA
          PHA
          JSR L5A0A
          adr L2D8B
          JSR L5A49
          byt $02
L26E9:    LDA L5E53
          BEQ L26F1
          JMP L2754
L26F1:    JSR L2755
          LDX #$00
          JSR L240D
          LDX #$00
          LDA $08
          LDY #$FF
          STA ($06),Y
          STX $7B
          JMP L273A
L2706:    TXA
          PHA
          LDA #$01
          PHA
          JSR L5A0A
          adr L2D8B
          JSR L5A49
          byt $02
          JMP L2751
L2717:    LDA #$FF
          PHA
          PHA
          JSR L5A0A
          adr L2D8B
          JSR L5A49
          byt $02
          JMP L2751
L2727:    TXA
          PHA
          LDY #$FF
          LDA ($06),Y
          PHA
          JSR L5A0A
          adr L2EFA
          JSR L5A49
          byt $02
          JMP L2751
L273A:    JSR L5B0E
          byt $04, $00, $08, $00
          adr L2717
          adr $000A
          adr L2706
          adr $000B
          adr L2717
          adr $0015
          adr L2706
          adr L2727
L2751:    JMP L26E9
L2754:    RTS
L2755:    JSR L5A6F
          byt $08, $D7, $FF
          LDA L606C
          STA $86
          LDA L606D
          STA $87
          LDA #$2A
          PHA
          LDA #$E2
          PHA
          CLC
          LDA #$D7
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L3E95
          JSR L5A49
          byt $04
          INY
          LDA ($86),Y
          STA $82
          LDA #$63
          CMP $82
          BCC L2794
          JMP L27AB
L2794:    CLC
          LDA #$D8
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          LDA $1C
          STA $80
          LDA $1D
          STA $81
          JMP L27DF
L27AB:    LDA $82
          CMP #$0A
          BCC L27B4
          JMP L27CB
L27B4:    CLC
          LDA #$DA
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          LDA $1C
          STA $80
          LDA $1D
          STA $81
          JMP L27DF
L27CB:    CLC
          LDA #$D9
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          LDA $1C
          STA $80
          LDA $1D
          STA $81
L27DF:    LDA $81
          PHA
          LDA $80
          PHA
          TXA
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L20FE
          JSR L5A49
          byt $04
          LDA #$29
          LDY #$DB
          STA ($06),Y
          LDY #$03
          LDA ($86),Y
          STA $82
          LDA $82
          CMP #$0A
          BCC L2808
          JMP L281F
L2808:    CLC
          LDA #$EE
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          LDA $1C
          STA $80
          LDA $1D
          STA $81
          JMP L2833
L281F:    CLC
          LDA #$ED
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          LDA $1C
          STA $80
          LDA $1D
          STA $81
L2833:    LDA $81
          PHA
          LDA $80
          PHA
          TXA
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L20FE
          JSR L5A49
          byt $04
          LDA #$29
          LDY #$EF
          STA ($06),Y
          TXA
          PHA
          LDA #$04
          PHA
          TXA
          PHA
          LDA #$02
          PHA
          JSR L5A0A
          adr L23E8
          JSR L5A49
          byt $04
          CLC
          LDA #$D7
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          PHA
          PHA
          PHA
          LDA L5E55
          PHA
          JSR L5A0A
          adr L23E8
          JSR L5A49
          byt $04
          TYA
          CMP L5F08
          TXA
          SBC L5F09
          BVS L289A
          BMI L289A
          JMP L28F5
L289A:    LDA L5E54
          CMP #$04
          BEQ L28A4
          JMP L28AB
L28A4:    LDA #$3F
          STA $32
          JMP L28AF
L28AB:    LDA #$FF
          STA $32
L28AF:    LDA #$2B
          PHA
          LDA #$03
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA L5E52
          STA $1C
          TXA
          STA $1D
          TYA
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$56
          STA $18
          LDA $1D
          ADC #$5E
          STA $19
          LDA ($18),Y
          PHA
          LDA ($18,X)
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          PHA
          LDA #$0D
          PHA
          JSR L5A0A
          adr L23F8
          JSR L5A49
          byt $02
L28F5:    LDA L5E54
          CMP #$05
          BEQ L28FF
          JMP L2906
L28FF:    LDA #$3F
          STA $32
          JMP L290A
L2906:    LDA #$FF
          STA $32
L290A:    LDA #$2B
          PHA
          LDA #$1C
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDY #$06
          LDA ($86),Y
          BNE L2922
          JMP L2934
L2922:    LDA #$2B
          PHA
          LDA #$37
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          JMP L2943
L2934:    LDA #$2B
          PHA
          LDA #$3B
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
L2943:    LDA L5E54
          CMP #$06
          BEQ L294D
          JMP L2954
L294D:    LDA #$3F
          STA $32
          JMP L2958
L2954:    LDA #$FF
          STA $32
L2958:    LDA #$2B
          PHA
          LDA #$3F
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA L5E54
          CMP #$07
          BEQ L2971
          JMP L2978
L2971:    LDA #$3F
          STA $32
          JMP L297C
L2978:    LDA #$FF
          STA $32
L297C:    LDA #$2B
          PHA
          LDA #$48
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA CARD
          STA $1C
          TXA
          STA $1D
          LDA #$02
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$5A
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18),Y
          PHA
          LDA ($18,X)
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$2B
          PHA
          LDA #$5F
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          STY $82
          CLC
          LDA $86
          ADC #$07
          STA $84
          LDA $87
          ADC #$00
          STA $85
          JMP L29E6
L29D7:    INC $82
          CLC
          LDA $84
          ADC #$46
          STA $84
          LDA $85
          ADC #$00
          STA $85
L29E6:    LDA #$0A
          CMP $82
          BCS L29EF
          JMP L2AB9
L29EF:    CLC
          LDA $82
          ADC #$08
          STA $1C
          LDA L5E54
          CMP $1C
          BEQ L2A00
          JMP L2A07
L2A00:    LDA #$3F
          STA $32
          JMP L2A0B
L2A07:    LDA #$FF
          STA $32
L2A0B:    CLC
          LDA #$D7
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          TXA
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L20FE
          JSR L5A49
          byt $04
          LDA #$2B
          PHA
          LDA #$61
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          CLC
          LDA #$D7
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA $82
          CMP #$0A
          BCC L2A5E
          JMP L2A70
L2A5E:    LDA #$2B
          PHA
          LDA #$63
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          JMP L2A7F
L2A70:    LDA #$2B
          PHA
          LDA #$66
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
L2A7F:    LDY #$05
          LDA ($84),Y
          BNE L2A88
          JMP L2AA7
L2A88:    CLC
          LDA $84
          ADC #$05
          STA $1C
          LDA $85
          ADC #$00
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          JMP L2AB6
L2AA7:    LDA #$2B
          PHA
          LDA #$68
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
L2AB6:    JMP L29D7
L2AB9:    LDA L5E54
          CMP #$14
          BEQ L2AC3
          JMP L2ACA
L2AC3:    LDA #$3F
          STA $32
          JMP L2ACE
L2ACA:    LDA #$FF
          STA $32
L2ACE:    LDA #$2B
          PHA
          LDA #$8B
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$FF
          STA $32
          RTS
L2AE2:    byt "(   ) DATA STRIPS ON (  ) PAGES"
          byt $0D, $00
          byt "DENSITY                 "
          byt $00
          byt "AUTO-EXECUTE FILE 1       "
          byt $00
          byt "ON "
          byt $00
          byt "OFF"
          byt $00, $0D
          byt "CATALOG"
          byt $00, $0D
          byt "GRAPHICS CARD        "
          byt $00, $0D, $00, $0D, $00
          byt ". "
          byt $00
          byt "."
          byt $00
          byt "                                  "
          byt $00, $0D, $0D
          byt "PRINT"
          byt $00
L2B93:    JSR L5A6F
          byt $04, $00, $00
          TXA
          PHA
          LDA #$01
          PHA
          TXA
          PHA
          LDA #$16
          PHA
          JSR L5A0A
          adr L23E8
          JSR L5A49
          byt $04
          CLC
          LDA L5E54
          ADC #$5C
          STA $1C
          TXA
          ADC #$5E
          STA $1D
          LDA ($1C,X)
          STA $18
          TXA
          STA $19
          TYA
          LDY #$18
          JSR L59AE
          CLC
          LDA $18
          ADC #$74
          STA $1C
          LDA $19
          ADC #$5E
          STA $1D
          LDA ($1C),Y
          PHA
          LDA ($1C,X)
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          LDA #$2C
          PHA
          LDA #$E3
          PHA
          JSR L5A0A
          adr L235E
          JSR L5A49
          byt $02
          PHA
          TYA
          PHA
          JSR L5A0A
          adr L2D09
          JSR L5A49
          byt $02
          RTS
L2BFE:    byt $00
          byt "        PRESS RETURN TO TOGGLE       "
          byt $00
          byt "AFTER READING, RUN FILE?        (Y/N)"
          byt $00
          byt "CATALOG OF DRIVE 1 OR 2         (1/2)"
          byt $00
          byt "        PRESS RETURN TO TOGGLE       "
          byt $00
          byt "   FILENAME  OR  CTRL-D  TO REMOVE   "
          byt $00
          byt "        PRINT DATA STRIPS?     (P)   "
          byt $00, $0D
          byt "   USE ARROW KEYS TO SELECT FUNCTION"
          byt $00
L2D09:    JSR L5A6F
          byt $04, $00, $00
          PHA
          PHA
          PHA
          LDA L5E54
          PHA
          JSR L5A0A
          adr L23E8
          JSR L5A49
          byt $04
          LDA $28
          STA $80
          LDA $29
          STA $81
          LDY #$09
          LDA ($04),Y
          INY
          ORA ($04),Y
          BNE L2D33
          JMP L2D60
L2D33:    STX $82
          JMP L2D3A
L2D38:    INC $82
L2D3A:    LDA $82
          CMP #$28
          BCC L2D43
          JMP L2D5D
L2D43:    CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          LDA ($1C,X)
          AND #$3F
          STA ($1C,X)
          JMP L2D38
L2D5D:    JMP L2D8A
L2D60:    STX $82
          JMP L2D67
L2D65:    INC $82
L2D67:    LDA $82
          CMP #$28
          BCC L2D70
          JMP L2D8A
L2D70:    CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          LDA ($1C,X)
          ORA #$80
          STA ($1C,X)
          JMP L2D65
L2D8A:    RTS
L2D8B:    JSR L5A6F
          byt $00, $00, $00
          PHA
          PHA
          JSR L5A0A
          adr L2D09
          JSR L5A49
          byt $02
          CLC
          LDA L5E54
          LDY #$09
          ADC ($04),Y
          STA L5E54
          LDA L5E54
          CMP #$08
          BNE L2DB1
          JMP L2DBB
L2DB1:    LDA L5E54
          CMP #$13
          BEQ L2DBB
          JMP L2DC6
L2DBB:    CLC
          LDA L5E54
          LDY #$09
          ADC ($04),Y
          STA L5E54
L2DC6:    LDA #$14
          CMP L5E54
          BCC L2DD0
          JMP L2DD9
L2DD0:    LDA L5E55
          STA L5E54
          JMP L2DE9
L2DD9:    LDA L5E54
          CMP L5E55
          BCC L2DE4
          JMP L2DE9
L2DE4:    LDA #$14
          STA L5E54
L2DE9:    JSR L2B93
          LDX #$00
          RTS
L2DEF:    JSR L5A6F
          byt $04, $00, $00
          LDA #$82
          STA $82
          LDA #$5E
          STA $83
          CLC
          LDA $82
          STA $1C
          ADC #$01
          STA $82
          LDA $83
          STA $1D
          ADC #$00
          STA $83
          LDY #$09
          LDA ($04),Y
          STA ($1C,X)
          TXA
          PHA
          LDA #$03
          PHA
          TXA
          PHA
          LDA L5E54
          PHA
          JSR L5A0A
          adr L23E8
          JSR L5A49
          byt $04
          PHA
          LDY #$09
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L23F8
          JSR L5A49
          byt $02
L2E37:    JSR L2218
          LDX #$00
          LDA $08
          STA $80
          LDA $08
          CMP #$0D
          BNE L2E49
          JMP L2EDA
L2E49:    LDA $80
          CMP #$7F
          BNE L2E52
          JMP L2E5B
L2E52:    LDA $80
          CMP #$08
          BEQ L2E5B
          JMP L2E86
L2E5B:    LDA #$82
          CMP $82
          LDA #$5E
          SBC $83
          BCC L2E68
          JMP L2E86
L2E68:    CLC
          LDA $82
          ADC #$FF
          STA $82
          LDA $83
          ADC #$FF
          STA $83
          TXA
          PHA
          LDA #$08
          PHA
          JSR L5A0A
          adr L23F8
          JSR L5A49
          byt $02
          JMP L2ED7
L2E86:    LDA $80
          CMP #$20
          BCS L2E8F
          JMP L2ED7
L2E8F:    CLC
          LDA $82
          STA $1C
          ADC #$01
          STA $82
          LDA $83
          STA $1D
          ADC #$00
          STA $83
          LDA $80
          STA ($1C,X)
          TXA
          PHA
          LDA $80
          PHA
          LDX #$1C
          JSR L5BB8
          JSR L5A0A
          adr L23F8
          JSR L5A49
          byt $02
          LDX #$1C
          JSR L5BDD
          LDA #$A4
          CMP $82
          LDA #$5E
          SBC $83
          BCS L2EC9
          JMP L2EDA
L2EC9:    LDA $80
          CMP #$04
          BEQ L2ED2
          JMP L2ED7
L2ED2:    STX $08
          STX $09
          RTS
L2ED7:    JMP L2E37
L2EDA:    TXA
          STA ($82,X)
          LDA $82
          CMP #$82
          BNE L2EE7
          LDA $83
          CMP #$5E
L2EE7:    BEQ L2EEC
          JMP L2EF1
L2EEC:    STX $08
          STX $09
          RTS
L2EF1:    LDA #$82
          STA $08
          LDA #$5E
          STA $09
          RTS
L2EFA:    JSR L5A6F
          byt $04, $00, $00
          PHA
          LDY #$09
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L4ACA
          JSR L5A49
          byt $02
          LDA $08
          LDY #$09
          STA ($04),Y
          LDA L606C
          STA $82
          LDA L606D
          STA $83
          CLC
          LDA L5E54
          ADC #$5C
          STA $1C
          TXA
          ADC #$5E
          STA $1D
          LDA ($1C,X)
          STA $08
          TXA
          STA $09
          JMP L3151
L2F36:    LDY #$09
          LDA ($04),Y
          CMP #$0D
          BEQ L2F41
          JMP L2F5C
L2F41:    INC L5E52
          LDA L5E52
          CMP L5F08
          TXA
          SBC L5F09
          BVS L2F54
          BPL L2F59
          BMI L2F56
L2F54:    BMI L2F59
L2F56:    JMP L2F5C
L2F59:    STX L5E52
L2F5C:    TXA
          PHA
          LDA L5E52
          PHA
          JSR L5A0A
          adr L1A67
          JSR L5A49
          byt $02
          PHA
          PHA
          PHA
          PHA
          JSR L5A0A
          adr L3167
          JSR L5A49
          byt $04
          LDA $08
          ORA $09
          BEQ L2F81
          JMP L2FB9
L2F81:    LDA L5F08
          CMP #$01
          BNE L2F8D
          LDA L5F09
          CMP #$00
L2F8D:    BEQ L2F92
          JMP L2F98
L2F92:    STX L5E52
          JMP L2F9D
L2F98:    LDA #$01
          STA L5E52
L2F9D:    TXA
          PHA
          LDA L5E52
          PHA
          JSR L5A0A
          adr L1A67
          JSR L5A49
          byt $02
          PHA
          PHA
          PHA
          PHA
          JSR L5A0A
          adr L3167
          JSR L5A49
          byt $04
L2FB9:    JMP L3166
L2FBC:    LDY #$09
          LDA ($04),Y
          CMP #$59
          BEQ L2FC7
          JMP L2FD0
L2FC7:    LDA #$01
          LDY #$06
          STA ($82),Y
          JMP L2FF6
L2FD0:    LDY #$09
          LDA ($04),Y
          CMP #$4E
          BEQ L2FDB
          JMP L2FE3
L2FDB:    TXA
          LDY #$06
          STA ($82),Y
          JMP L2FF6
L2FE3:    LDY #$09
          LDA ($04),Y
          CMP #$0D
          BEQ L2FEE
          JMP L2FF6
L2FEE:    LDY #$06
          LDA ($82),Y
          EOR #$01
          STA ($82),Y
L2FF6:    JMP L3166
L2FF9:    LDY #$09
          LDA ($04),Y
          CMP #$31
          BNE L3004
          JMP L300D
L3004:    LDA ($04),Y
          CMP #$32
          BEQ L300D
          JMP L3051
L300D:    STX $22
          LDA #$FF
          STA $32
          JSR L23DF
          LDX #$00
          TXA
          PHA
          PHA
          CLC
          LDY #$09
          LDA ($04),Y
          ADC #$D0
          STA $1C
          TXA
          ADC #$FF
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          TXA
          PHA
          LDA #$06
          PHA
          JSR L5A0A
          adr L3EB0
          JSR L5A49
          byt $06
          JSR L2218
          LDX #$00
          JSR L2615
          LDX #$00
          LDA #$06
          STA L5E54
          JSR L2B93
          LDX #$00
L3051:    JMP L3166
L3054:    LDY #$09
          LDA ($04),Y
          CMP #$0D
          BEQ L305F
          JMP L308A
L305F:    INC CARD
          LDA CARD
          STA $1C
          TXA
          STA $1D
          LDA #$02
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$58
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18,X)
          ORA ($18),Y
          BEQ L3087
          JMP L308A
L3087:    STX CARD
L308A:    JMP L3166
L308D:    CLC
          LDA L5E54
          ADC #$F7
          STA $1C
          TXA
          ADC #$FF
          STA $1D
          LDA #$46
          LDY #$1C
          JSR L58DC
          CLC
          LDA $1C
          ADC $82
          STA $18
          LDA $1D
          ADC $83
          STA $19
          CLC
          LDA $18
          ADC #$07
          STA $80
          LDA $19
          ADC #$00
          STA $81
          LDY #$09
          LDA ($04),Y
          CMP #$04
          BEQ L30C6
          JMP L3104
L30C6:    LDY #$05
          LDA ($80),Y
          BNE L30CF
          JMP L3101
L30CF:    TXA
          PHA
          PHA
          PHA
          LDA #$46
          PHA
          LDA $81
          PHA
          LDA $80
          PHA
          JSR L5A0A
          adr L56BA
          JSR L5A49
          byt $06
          CLC
          LDA ($82),Y
          ADC #$FF
          STA ($82),Y
          TXA
          ADC #$FF
          LDA $81
          PHA
          LDA $80
          PHA
          TXA
          PHA
          PHA
          JSR L5A0A
          adr L3167
          JSR L5A49
          byt $04
L3101:    JMP L313B
L3104:    LDY #$05
          LDA ($80),Y
          BEQ L310D
          JMP L313B
L310D:    LDY #$09
          LDA ($04),Y
          CMP #$20
          BCS L3118
          JMP L313B
L3118:    LDA $81
          PHA
          LDA $80
          PHA
          TXA
          PHA
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L2DEF
          JSR L5A49
          byt $02
          LDA $09
          PHA
          LDA $08
          PHA
          JSR L5A0A
          adr L3167
          JSR L5A49
          byt $04
L313B:    JMP L3166
L313E:    LDY #$09
          LDA ($04),Y
          CMP #$50
          BEQ L3149
          JMP L314E
L3149:    LDA #$01
          STA L5E53
L314E:    JMP L3166
L3151:    JSR L589C
          byt $FF, $FF, $06, $00
          adr L3166
          adr L2F36
          adr L2FBC
          adr L2FF9
          adr L3054
          adr L308D
          adr L313E
L3166:    RTS
L3167:    JSR L5A6F
          byt $0E, $FC, $FF
          LDY #$0B
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          LDA L606C
          STA $8A
          LDA L606D
          STA $8B
          CLC
          LDA $8A
          ADC #$07
          STA $88
          LDA $8B
          ADC #$00
          STA $89
          LDY #$01
          LDA ($8A),Y
          STA $82
          LDY #$09
          LDA ($04),Y
          INY
          ORA ($04),Y
          BNE L31A1
          JMP L31FA
L31A1:    LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          CLC
          LDA $80
          ADC #$05
          STA $1C
          LDA $81
          ADC #$00
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L3E95
          JSR L5A49
          byt $04
          LDA $81
          PHA
          LDA $80
          PHA
          JSR L5A0A
          adr L2550
          JSR L5A49
          byt $02
          LDA $08
          ORA $09
          BEQ L31DC
          JMP L31E6
L31DC:    TXA
          LDY #$05
          STA ($80),Y
          STX $08
          STX $09
          RTS
L31E6:    CLC
          LDY #$01
          LDA ($8A),Y
          ADC #$01
          STA ($8A),Y
          STA $1C
          TXA
          ADC #$00
          STA $1D
          LDA $1C
          STA $82
L31FA:    LDA #$02
          LDY #$FC
          STA ($06),Y
          TXA
          INY
          STA ($06),Y
          INY
          STA ($06),Y
          INY
          STA ($06),Y
          STX $86
          JMP L321C
L320F:    CLC
          LDA $88
          ADC #$46
          STA $88
          LDA $89
          ADC #$00
          STA $89
L321C:    LDA $86
          CMP $82
          BCC L3225
          JMP L32E5
L3225:    LDY #$05
          LDA ($88),Y
          BNE L322E
          JMP L32E2
L322E:    INC $86
          TXA
          PHA
          LDA #$2C
          PHA
          CLC
          LDA $88
          ADC #$05
          STA $1C
          LDA $89
          ADC #$00
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L5870
          JSR L5A49
          byt $04
          LDA $08
          STA $84
          LDA $09
          STA $85
          LDA $08
          ORA $09
          BEQ L3262
          JMP L3289
L3262:    CLC
          LDA $88
          ADC #$05
          STA $1C
          LDA $89
          ADC #$00
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L56F0
          JSR L5A49
          byt $02
          LDA $08
          STA $8C
          LDA $09
          STA $8D
          JMP L32A3
L3289:    CLC
          LDA $88
          ADC #$05
          STA $1C
          LDA $89
          ADC #$00
          STA $1D
          SEC
          LDA $84
          SBC $1C
          STA $8C
          LDA $85
          SBC $1D
          STA $8D
L32A3:    CLC
          LDY #$02
          LDA ($88),Y
          ADC $8C
          STA $1C
          INY
          LDA ($88),Y
          ADC $8D
          STA $1D
          CLC
          LDA $1C
          ADC #$07
          STA $18
          LDA $1D
          ADC #$00
          STA $19
          STX $1A
          STX $1B
          CLC
          LDY #$FC
          LDA ($06),Y
          ADC $18
          STA ($06),Y
          INY
          LDA ($06),Y
          ADC $19
          STA ($06),Y
          INY
          LDA ($06),Y
          ADC $1A
          STA ($06),Y
          INY
          LDA ($06),Y
          ADC $1B
          STA ($06),Y
L32E2:    JMP L320F
L32E5:    LDY #$FC
          LDA ($06),Y
          CMP #$02
          BNE L3300
          INY
          LDA ($06),Y
          CMP #$00
          BNE L3300
          INY
          LDA ($06),Y
          CMP #$00
          BNE L3300
          INY
          LDA ($06),Y
          CMP #$00
L3300:    BEQ L3305
          JMP L3310
L3305:    TXA
          LDY #$03
          STA ($8A),Y
          DEY
          STA ($8A),Y
          JMP L3423
L3310:    LDA L5ED3
          STA $1C
          LDA L5ED4
          STA $1D
          LDY #$02
          LDA ($1C),Y
          STA $18
          INY
          LDA ($1C),Y
          STA $19
          LDY #$00
          ASL
          BCC L332B
          DEY
L332B:    STY $1A
          STY $1B
          LDY #$FC
          LDA ($06),Y
          STA $10
          INY
          LDA ($06),Y
          STA $11
          INY
          LDA ($06),Y
          STA $12
          INY
          LDA ($06),Y
          STA $13
          LDX #$18
          LDY #$10
          JSR L5C6A
          LDA $10
          STA $86
          LDA $86
          STA $1C
          STX $1D
          STX $1E
          STX $1F
          LDA L5ED3
          STA $18
          LDA L5ED4
          STA $19
          INY
          LDA ($18),Y
          STA $10
          INY
          LDA ($18),Y
          STA $11
          LDY #$00
          ASL
          BCC L3373
          DEY
L3373:    STY $12
          STY $13
          LDX #$10
          LDY #$1C
          JSR L5C1B
          LDA $1C
          LDY #$FC
          CMP ($06),Y
          LDA $1D
          INY
          SBC ($06),Y
          LDA $1E
          INY
          SBC ($06),Y
          LDA $1F
          INY
          SBC ($06),Y
          BVS L3399
          BMI L339E
          BPL L339B
L3399:    BPL L339E
L339B:    JMP L33A0
L339E:    INC $86
L33A0:    LDA #$7F
          CMP $86
          BCC L33A9
          JMP L33D8
L33A9:    LDY #$09
          LDA ($04),Y
          INY
          ORA ($04),Y
          BNE L33B5
          JMP L33D3
L33B5:    CLC
          LDY #$01
          LDA ($8A),Y
          ADC #$FF
          STA ($8A),Y
          TXA
          ADC #$FF
          TXA
          LDY #$05
          STA ($80),Y
          PHA
          PHA
          PHA
          PHA
          JSR L5A0A
          adr L3167
          JSR L5A49
          byt $04
L33D3:    STX $08
          STX $09
          RTS
L33D8:    LDA $86
          LDY #$02
          STA ($8A),Y
          LDA $86
          STA $1C
          TXA
          STA $1D
          LDA L5FE1
          TAX
          LDA L5FE0
          LDY #$1C
          JSR L590D
          LDA $1C
          STA $82
          LDA $82
          STA $1C
          TXA
          STA $1D
          LDA L5FE1
          TAX
          LDA L5FE0
          LDY #$1C
          JSR L58DC
          LDA $1C
          CMP $86
          LDA $1D
          SBC #$00
          BVS L3416
          BMI L341B
          BPL L3418
L3416:    BPL L341B
L3418:    JMP L341D
L341B:    INC $82
L341D:    LDA $82
          LDY #$03
          STA ($8A),Y
L3423:    LDA #$01
          STA $08
          STX $09
          RTS
L342A:    LDY #$00
          LDA ($02),Y
          PHA
          LDY SLOT
L3432:    LDA $C080,Y
          AND #$0E
          CMP #$02
          BNE L3432
          PLA
          STA $C080,Y
          RTS
L3440:    LDY #$00
          LDA ($02),Y
          PHA
          LDY SLOT
L3448:    LDA $C080,Y
          AND #$03
          CMP #$01
          BNE L3448
          PLA
          STA $C080,Y
          STA $C081,Y
          STA $C080,Y
          RTS
L345C:    byt $00
L345D:    byt $A0, $00
L345F:    LDA ($02),Y
          PHA
          LDY SLOT
          LDA L345C
          BNE L3482
          LDA $FBB3
          CMP #$06
          BNE L347D
          LDA $FBC0
          BNE L347D
          LDA #$30
          STA L345C
          BNE L3482
L347D:    LDA #$50
          STA L345C
L3482:    LDA $C08B,Y
          BNE L349B
          LDA L0906
          BNE L348E
          LDA #$1E
L348E:    STA $C08B,Y
          LDA L0907
          BNE L3498
          LDA #$0B
L3498:    STA $C08A,Y
L349B:    LDA $C089,Y
          STA $08
          AND L345C
          CMP #$10
          BEQ L34A9
          BNE L349B
L34A9:    PLA
          STA $C088,Y
          LDA $08
          AND #$08
          BNE L34BF
          LDY L0908
          STY $08
L34B8:    ROR $08
          DEY
          BNE L34B8
          CLC
          RTS
L34BF:    LDA $C088,Y
          AND #$7F
          CMP #$13
          BEQ L34C9
          RTS
L34C9:    LDA $C089,Y
          AND #$08
          BEQ L34C9
          LDA $C088,Y
          AND #$7F
          CMP #$11
          BNE L34C9
          RTS
L34DA:    byt "l"
          byt $08, $00
          byt "  GRAPPLER  "
          byt $00
          byt "  DUMPLING  "
          byt $00
          byt "SUPER SERIAL"
          byt $00
L3504:    CLC
          LDY #$03
          LDA ($02),Y
          STA $09
          DEY
          LDA ($02),Y
          STA $08
          DEY
          LDA ($02),Y
          STA $0D
          DEY
          LDA ($02),Y
          STY $0C
          TAY
          LDA #$00
L351D:    ADC ($0C),Y
          INY
          BNE L3524
          INC $0D
L3524:    PHA
          PHP
          SEC
          LDA $08
          SBC #$01
          STA $08
          LDA $09
          SBC #$00
          STA $09
          ORA $08
          BEQ L353C
          PLP
          PLA
          CLV
          BVC L351D
L353C:    STA $09
          PLP
          PLA
          ADC #$00
          EOR #$FF
          STA $08
          INC $08
          RTS
L3549:    LDY #$01
          LDA ($02),Y
          STA $0D
          DEY
          LDA ($02),Y
          STA $0C
          TYA
          STA $09
          STA $08
L3559:    EOR ($0C),Y
          INY
          CPY #$05
          BNE L3559
          STA $08
          LSR
          LSR
          LSR
          LSR
          EOR $08
          AND #$06
          LSR
          STA $08
          RTS
L356E:    JSR L5A6F
          byt $0E, $FE, $FF
          STX L5EAE
          STX L5EAF
          LDA L6068
          STA L5FF4
          LDA L6069
          STA L5FF5
          JSR L20F7
          LDX #$00
          STX $82
          JMP L3592
L3590:    INC $82
L3592:    LDA $82
          CMP L5FE0
          TXA
          SBC L5FE1
          BVS L35A1
          BMI L35A6
          BPL L35A3
L35A1:    BPL L35A6
L35A3:    JMP L3625
L35A6:    LDA L5FF4
          STA $1C
          LDA L5FF5
          STA $1D
          LDA ($1C,X)
          BNE L35B7
          JMP L3625
L35B7:    CLC
          LDA L5FF4
          STA $1C
          ADC #$0B
          STA L5FF4
          LDA L5FF5
          STA $1D
          ADC #$00
          STA L5FF5
          LDY #$03
          LDA ($1C),Y
          STA L606E
          INY
          LDA ($1C),Y
          STA L606F
          LDA L606E
          STA $1C
          LDA L606F
          STA $1D
          LDA L606E
          STA $18
          LDA L606F
          STA $19
          LDA ($18),Y
          PHA
          DEY
          LDA ($18),Y
          PHA
          CLC
          LDA L606E
          ADC #$05
          STA $18
          LDA L606F
          ADC #$00
          STA $19
          LDA $19
          PHA
          LDA $18
          PHA
          LDX #$1C
          JSR L5BB8
          JSR L5A0A
          adr L3504
          JSR L5A49
          byt $04
          LDX #$1C
          JSR L5BDD
          LDA $08
          LDY #$05
          STA ($1C),Y
          JMP L3590
L3625:    LDA L6068
          STA $1C
          LDA L6069
          STA $1D
          LDA ($1C,X)
          BNE L3636
          JMP L39EF
L3636:    LDA L6068
          STA L5FF4
          LDA L6069
          STA L5FF5
          CLC
          LDA L606A
          ADC L5FEC
          STA $88
          LDA L606B
          ADC L5FED
          STA $89
          TXA
          PHA
          PHA
          LDA L5FEB
          PHA
          LDA L5FEA
          PHA
          LDA L606B
          PHA
          LDA L606A
          PHA
          JSR L5A0A
          adr L56BA
          JSR L5A49
          byt $06
          STX L5EAC
          LDA L606A
          STA $1C
          LDA L606B
          STA $1D
          TYA
          STA ($1C,X)
L367F:    LDA L5FF4
          STA $1C
          LDA L5FF5
          STA $1D
          LDA ($1C,X)
          BNE L3690
          JMP L37CC
L3690:    LDA L5FC8
          STA L5EAD
          LDA L5EAE
          STA L5EAA
          LDA L5EAF
          STA L5EAB
          STX $84
          JMP L36A9
L36A7:    INC $84
L36A9:    LDA $84
          CMP L5FE2
          TXA
          SBC L5FE3
          BVS L36B8
          BMI L36BD
          BPL L36BA
L36B8:    BPL L36BD
L36BA:    JMP L37A9
L36BD:    LDA L5EAA
          CMP L5F02
          LDA L5EAB
          SBC L5F03
          BCS L36CE
          JMP L377F
L36CE:    LDA $89
          PHA
          LDA $88
          PHA
          TXA
          PHA
          LDA $84
          PHA
          JSR L5A0A
          adr L3C27
          JSR L5A49
          byt $04
          CLC
          LDA $88
          ADC #$FF
          STA $80
          LDA $89
          ADC #$FF
          STA $81
          LDA L5EAC
          BEQ L36F7
          JMP L3710
L36F7:    LDA L0905
          CMP #$02
          BNE L3701
          JMP L3710
L3701:    CLC
          LDA $80
          ADC L5FF0
          STA $80
          LDA $81
          ADC L5FF1
          STA $81
L3710:    CLC
          LDA $88
          ADC L5FF2
          STA $8C
          LDA $89
          ADC L5FF3
          STA $8D
L371F:    CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          LDA $1C
          CMP $8C
          LDA $1D
          SBC $8D
          BCC L373D
          JMP L377F
L373D:    CLC
          LDA $80
          ADC L5FCC
          STA $1C
          LDA $81
          ADC L5FCD
          STA $1D
          LDA ($80,X)
          AND ($1C,X)
          STA $8A
          LDA #$01
          STA $82
          JMP L375B
L3759:    INC $82
L375B:    LDA $82
          CMP L5FCC
          TXA
          SBC L5FCD
          BVS L376A
          BMI L376F
          BPL L376C
L376A:    BPL L376F
L376C:    JMP L377C
L376F:    INC $80
          BNE L3775
          INC $81
L3775:    LDA $8A
          STA ($80,X)
          JMP L3759
L377C:    JMP L371F
L377F:    CLC
          LDA L5EAA
          ADC L5FDE
          STA L5EAA
          LDA L5EAB
          ADC L5FDF
          STA L5EAB
          TXA
          PHA
          LDA L5EAD
          PHA
          JSR L5A0A
          adr L1A8C
          JSR L5A49
          byt $02
          LDA $08
          STA L5EAD
          JMP L36A7
L37A9:    CLC
          LDA $88
          ADC L5FEE
          STA $88
          LDA $89
          ADC L5FEF
          STA $89
          CLC
          LDA L5FF4
          ADC #$0B
          STA L5FF4
          LDA L5FF5
          ADC #$00
          STA L5FF5
          JMP L367F
L37CC:    CLC
          LDA $80
          ADC #$FF
          STA $80
          LDA $81
          ADC #$FF
          STA $81
          LDA ($80,X)
          BEQ L37E0
          JMP L37E3
L37E0:    JMP L37CC
L37E3:    SEC
          LDA $80
          SBC L606A
          STA L5EAA
          LDA $81
          SBC L606B
          STA L5EAB
          LDA L5EAA
          ORA L5EAB
          BNE L37FF
          JMP L39EC
L37FF:    LDA L0905
          CMP #$02
          BNE L3809
          JMP L3819
L3809:    LDA L0905
          BEQ L3811
          JMP L388A
L3811:    LDA L5EAC
          BEQ L3819
          JMP L388A
L3819:    LDA L5EAB
          PHA
          LDA L5EAA
          PHA
          JSR L5A0A
          adr L1AA2
          JSR L5A49
          byt $02
          CLC
          LDA L606A
          ADC #$01
          STA $80
          LDA L606B
          ADC #$00
          STA $81
          LDA L5EAA
          LDY #$FE
          STA ($06),Y
          LDA L5EAB
          INY
          STA ($06),Y
          JMP L3859
L3849:    CLC
          LDY #$FE
          LDA ($06),Y
          ADC #$FF
          STA ($06),Y
          INY
          LDA ($06),Y
          ADC #$FF
          STA ($06),Y
L3859:    LDY #$FE
          LDA ($06),Y
          INY
          ORA ($06),Y
          BNE L3865
          JMP L3887
L3865:    CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          TXA
          PHA
          LDA ($1C,X)
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          JMP L3849
L3887:    JMP L39C3
L388A:    LDA L5EAA
          AND #$01
          BNE L3894
          JMP L389C
L3894:    INC L5EAA
          BNE L389C
          INC L5EAB
L389C:    LDA L5EAB
          PHA
          LDA L5EAA
          PHA
          JSR L5A0A
          adr L1AA2
          JSR L5A49
          byt $02
          CLC
          LDA L606A
          ADC #$01
          STA $80
          LDA L606B
          ADC #$00
          STA $81
          LDA L5EAA
          STA $1C
          LDA L5EAB
          STA $1D
          TYA
          LDY #$1C
          JSR L59ED
          LDA $1C
          LDY #$FE
          STA ($06),Y
          LDA $1D
          INY
          STA ($06),Y
          JMP L38F0
L38DA:    INC $80
          BNE L38E0
          INC $81
L38E0:    CLC
          LDY #$FE
          LDA ($06),Y
          ADC #$FF
          STA ($06),Y
          INY
          LDA ($06),Y
          ADC #$FF
          STA ($06),Y
L38F0:    LDY #$FE
          LDA ($06),Y
          INY
          ORA ($06),Y
          BNE L38FC
          JMP L3929
L38FC:    CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          TXA
          PHA
          LDA ($1C,X)
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          PHA
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          JMP L38DA
L3929:    TXA
          PHA
          PHA
          JSR L5A0A
          adr L1AF2
          JSR L5A49
          byt $02
          LDA L5EAB
          PHA
          LDA L5EAA
          PHA
          JSR L5A0A
          adr L1AA2
          JSR L5A49
          byt $02
          CLC
          LDA L606A
          ADC #$02
          STA $80
          LDA L606B
          ADC #$00
          STA $81
          LDA L5EAA
          STA $1C
          LDA L5EAB
          STA $1D
          TYA
          LDY #$1C
          JSR L59ED
          LDA $1C
          LDY #$FE
          STA ($06),Y
          LDA $1D
          INY
          STA ($06),Y
          JMP L3989
L3973:    INC $80
          BNE L3979
          INC $81
L3979:    CLC
          LDY #$FE
          LDA ($06),Y
          ADC #$FF
          STA ($06),Y
          INY
          LDA ($06),Y
          ADC #$FF
          STA ($06),Y
L3989:    LDY #$FE
          LDA ($06),Y
          INY
          ORA ($06),Y
          BNE L3995
          JMP L39C3
L3995:    TXA
          PHA
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          TXA
          PHA
          LDA ($1C,X)
          PHA
          JSR L5A0A
          adr L17F6
          JSR L5A49
          byt $02
          JMP L3973
L39C3:    CLC
          LDA L5EAE
          ADC L5FE8
          STA L5EAE
          LDA L5EAF
          ADC L5FE9
          STA L5EAF
          LDA L5FE9
          PHA
          LDA L5FE8
          PHA
          JSR L5A0A
          adr L1AF2
          JSR L5A49
          byt $02
          JSR L1B66
          LDX #$00
L39EC:    JMP L3625
L39EF:    RTS
L39F0:    JSR L5A6F
          byt $0E, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          INY
          LDA ($04),Y
          STA $82
          INY
          LDA ($04),Y
          STA $83
          LDA L5ED3
          STA $1C
          LDA L5ED4
          STA $1D
          LDA $80
          STA $86
          LDA $81
          STA $87
          LDA ($1C,X)
          LDY #$86
          JSR L590D
          LDA $86
          STA $1C
          LDA $87
          STA $1D
          LDA L5FE7
          TAX
          LDA L5FE6
          LDY #$1C
          JSR L58DC
          LDA $1C
          STA $84
          LDA $1D
          STA $85
          LDA L5FF4
          STA $1C
          LDA L5FF5
          STA $1D
          LDA $84
          STA $18
          LDA $85
          STA $19
          TYA
          LDY #$18
          JSR L59ED
          CLC
          LDA ($1C),Y
          ADC $18
          STA $88
          INY
          LDA ($1C),Y
          ADC $19
          STA $89
          LDA $84
          AND #$01
          STA $84
          LDA $85
          AND #$00
          STA $85
          LDA L5FF4
          STA $1C
          LDA L5FF5
          STA $1D
          LDA $88
          LDY #$07
          CMP ($1C),Y
          LDA $89
          INY
          SBC ($1C),Y
          BCS L3A8C
          JMP L3ACC
L3A8C:    LDY #$0D
          LDA ($04),Y
          BEQ L3A95
          JMP L3AA2
L3A95:    LDA L5FF4
          STA $1C
          LDA L5FF5
          STA $1D
          TXA
          STA ($1C,X)
L3AA2:    TXA
          PHA
          PHA
          CLC
          LDA L5FE6
          ADC #$02
          STA $1C
          LDA L5FE7
          ADC #$00
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L56BA
          JSR L5A49
          byt $06
          JMP L3C26
L3ACC:    CLC
          LDA L5FE6
          ADC #$02
          STA $1C
          LDA L5FE7
          ADC #$00
          STA $1D
          SEC
          LDA $1C
          SBC $84
          STA $18
          LDA $1D
          SBC $85
          STA $19
          LDA $18
          STA $8C
          SEC
          LDA #$01
          SBC $84
          STA $1C
          TXA
          SBC $85
          STA $1D
          LDA $1C
          STA $8A
L3AFC:    LDA $8A
          CMP $8C
          BCC L3B05
          JMP L3B96
L3B05:    CLC
          LDA $8A
          STA $1C
          ADC #$01
          STA $8A
          TXA
          STA $1D
          ADC #$00
          CLC
          LDA $1C
          ADC $82
          STA $18
          LDA $1D
          ADC $83
          STA $19
          LDA ($88,X)
          AND #$0F
          STA $1C
          TXA
          AND #$00
          STA $1D
          CLC
          LDA $1C
          ADC #$CE
          STA $10
          LDA $1D
          ADC #$5F
          STA $11
          LDA ($10,X)
          STA ($18,X)
          CLC
          LDA $8A
          STA $1C
          ADC #$01
          STA $8A
          TXA
          STA $1D
          ADC #$00
          CLC
          LDA $1C
          ADC $82
          STA $18
          LDA $1D
          ADC $83
          STA $19
          CLC
          LDA $88
          STA $1C
          ADC #$01
          STA $88
          LDA $89
          STA $1D
          ADC #$00
          STA $89
          LDA ($1C,X)
          STA $10
          TXA
          STA $11
          LDA #$04
          LDY #$10
          JSR L59CB
          LDA $10
          AND #$0F
          STA $1C
          LDA $11
          AND #$00
          STA $1D
          CLC
          LDA $1C
          ADC #$CE
          STA $10
          LDA $1D
          ADC #$5F
          STA $11
          LDA ($10,X)
          STA ($18,X)
          JMP L3AFC
L3B96:    CLC
          LDA $82
          ADC #$01
          STA $1C
          LDA $83
          ADC #$00
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L3549
          JSR L5A49
          byt $02
          LDA $08
          STA $8A
          LDA $86
          AND #$01
          STA $1C
          LDA $87
          AND #$00
          STA $1D
          TYA
          LDY #$1C
          JSR L59AE
          LDA $1C
          STA $86
          LDA $1D
          STA $87
          LDA $8A
          STA $1C
          TXA
          STA $1D
          TYA
          LDY #$1C
          JSR L59CB
          CLC
          LDA $1C
          ADC $86
          STA $18
          LDA $1D
          ADC $87
          STA $19
          CLC
          LDA $18
          ADC #$D5
          STA $1C
          LDA $19
          ADC #$5E
          STA $1D
          LDA ($1C,X)
          STA ($82,X)
          LDA $8A
          AND #$01
          STA $1C
          TXA
          AND #$00
          STA $1D
          CLC
          LDA $1C
          ADC $86
          STA $18
          LDA $1D
          ADC $87
          STA $19
          CLC
          LDA $18
          ADC #$F7
          STA $1C
          LDA $19
          ADC #$5E
          STA $1D
          LDA ($1C,X)
          LDY #$06
          STA ($82),Y
L3C26:    RTS
L3C27:    JSR L5A6F
          byt $0E, $00, $00
          LDY #$0B
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          LDA #$B0
          STA $82
          LDA #$5E
          STA $83
          LDA #$CC
          STA $84
          LDA #$5E
          STA $85
          LDA L5EAA
          CMP L5F04
          LDA L5EAB
          SBC L5F05
          BCC L3C59
          JMP L3C7B
L3C59:    LDA #$01
          STA L5EAC
          TXA
          PHA
          LDA #$0E
          PHA
          LDA #$5E
          PHA
          LDA #$FB
          PHA
          LDA #$5E
          PHA
          LDA #$B0
          PHA
          JSR L5A0A
          adr L3E34
          JSR L5A49
          byt $06
          JMP L3D0F
L3C7B:    SEC
          LDA L5EAA
          SBC L5F04
          STA $8C
          LDA L5EAB
          SBC L5F05
          STA $8D
          TXA
          PHA
          LDY #$09
          LDA ($04),Y
          PHA
          LDA #$5E
          PHA
          LDA #$B0
          PHA
          LDA $8D
          PHA
          LDA $8C
          PHA
          JSR L5A0A
          adr L39F0
          JSR L5A49
          byt $06
          LDA $8C
          ORA $8D
          BEQ L3CB1
          JMP L3CBC
L3CB1:    LDA #$FB
          STA $84
          LDA #$5E
          STA $85
          JMP L3D0F
L3CBC:    LDA L5ED3
          STA $1C
          LDA L5ED4
          STA $1D
          LDA $8C
          STA $18
          LDA $8D
          STA $19
          LDA ($1C,X)
          LDY #$18
          JSR L592A
          LDA $18
          ORA $19
          BEQ L3CDE
          JMP L3D0F
L3CDE:    TXA
          PHA
          LDY #$09
          LDA ($04),Y
          PHA
          LDA #$BE
          STA $84
          LDA #$5E
          STA $85
          LDA $85
          PHA
          LDA $84
          PHA
          CLC
          LDA $8C
          ADC #$FF
          STA $1C
          LDA $8D
          ADC #$FF
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L39F0
          JSR L5A49
          byt $06
L3D0F:    STX $88
          JMP L3D16
L3D14:    INC $88
L3D16:    CLC
          LDA L5FE6
          ADC #$02
          STA $1C
          LDA L5FE7
          ADC #$00
          STA $1D
          LDA $88
          CMP $1C
          TXA
          SBC $1D
          BVS L3D32
          BMI L3D37
          BPL L3D34
L3D32:    BPL L3D37
L3D34:    JMP L3D62
L3D37:    CLC
          LDA $82
          STA $1C
          ADC #$01
          STA $82
          LDA $83
          STA $1D
          ADC #$00
          STA $83
          CLC
          LDA $84
          STA $18
          ADC #$01
          STA $84
          LDA $85
          STA $19
          ADC #$00
          STA $85
          LDA ($1C,X)
          AND ($18,X)
          STA ($1C,X)
          JMP L3D14
L3D62:    LDA #$B0
          STA $82
          LDA #$5E
          STA $83
          LDA #$01
          STA $8A
          STX $88
          JMP L3D75
L3D73:    INC $88
L3D75:    CLC
          LDA L5FE6
          ADC #$02
          STA $1C
          LDA L5FE7
          ADC #$00
          STA $1D
          LDA #$03
          LDY #$1C
          JSR L59AE
          LDA $88
          CMP $1C
          TXA
          SBC $1D
          BVS L3D98
          BMI L3D9D
          BPL L3D9A
L3D98:    BPL L3D9D
L3D9A:    JMP L3DF4
L3D9D:    LDA ($82,X)
          AND $8A
          STA $1C
          TXA
          AND #$00
          STA $1D
          LDA $1C
          ORA $1D
          BNE L3DB1
          JMP L3DB9
L3DB1:    LDA L5EAD
          STA $1C
          JMP L3DBB
L3DB9:    STX $1C
L3DBB:    LDA ($80,X)
          ORA $1C
          STA ($80,X)
          CLC
          LDA $80
          ADC L5FCC
          STA $80
          LDA $81
          ADC L5FCD
          STA $81
          LDA $8A
          STA $1C
          TXA
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          LDA $1C
          STA $8A
          LDA $8A
          BEQ L3DE9
          JMP L3DF1
L3DE9:    STY $8A
          INC $82
          BNE L3DF1
          INC $83
L3DF1:    JMP L3D73
L3DF4:    RTS
L3DF5:    CLD
          LDA #$60
          STA $03CD
          LDA $E000
          CMP #$20
          BNE L3E08
          LDA $4C
          LDX $4D
          BNE L3E16
L3E08:    CMP #$4C
          BNE L3E12
          LDA $73
          LDX $74
          BNE L3E16
L3E12:    LDA $FE
          LDX $FF
L3E16:    STA $02
          STX $03
          LDA #$8B
          STA L5FF6
          LDA #$60
          STA L5FF7
          LDA #$00
          STA L5FF8
          STA L5FF9
          LDA #$03
          STA $03CA
          JMP L3F4B
L3E34:    LDY #$05
L3E36:    LDA ($02),Y
          STA $0008,Y
          DEY
          BPL L3E36
          INY
          LDA $08
          CMP $0A
          LDA $09
          SBC $0B
          BCC L3E7D
          CLC
          LDA $08
          ADC $0C
          STA $08
          LDA $09
          ADC $0D
          STA $09
          CLC
          LDA $0A
          ADC $0C
          STA $0A
          LDA $0B
          ADC $0D
          STA $0B
          LDX $0C
L3E65:    TXA
          BNE L3E6C
          DEC $0D
          BMI L3E7C
L3E6C:    TYA
          BNE L3E73
          DEC $09
          DEC $0B
L3E73:    DEY
          LDA ($0A),Y
          STA ($08),Y
          DEX
          JMP L3E65
L3E7C:    RTS
L3E7D:    LDX $0C
L3E7F:    TXA
          BNE L3E86
          DEC $0D
          BMI L3E7C
L3E86:    LDA ($0A),Y
          STA ($08),Y
          INY
          BNE L3E91
          INC $09
          INC $0B
L3E91:    DEX
          JMP L3E7F
L3E95:    LDY #$03
L3E97:    LDA ($02),Y
          STA $0008,Y
          DEY
          BPL L3E97
          INY
L3EA0:    LDA ($0A),Y
          STA ($08),Y
          BEQ L3EAF
          INY
          BNE L3EA0
          INC $09
          INC $0B
          BNE L3EA0
L3EAF:    RTS
L3EB0:    JSR L5A6F
          byt $04, $00, $00
          JSR L52AD
          LDX #$00
          LDA $08
          STA $80
          LDA $09
          STA $81
          LDA #$06
          STA ($80,X)
          LDY #$0B
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          STA $1D
          LDA #$08
          LDY #$1C
          JSR L59AE
          LDA $1C
          LDY #$0D
          ORA ($04),Y
          LDY #$04
          STA ($80),Y
          LDA $1D
          LDY #$0E
          ORA ($04),Y
          LDY #$05
          STA ($80),Y
          LDY #$09
          LDA ($04),Y
          LDY #$06
          STA ($80),Y
          LDY #$0A
          LDA ($04),Y
          LDY #$07
          STA ($80),Y
          LDA $81
          PHA
          LDA $80
          PHA
          JSR L5A0A
          adr L4391
          JSR L5A49
          byt $02
          LDA $08
          STA $82
          LDA $09
          STA $83
          LDA $08
          ORA $09
          BNE L3F21
          LDA #$FF
          STA $08
          STA $09
          RTS
L3F21:    TXA
          PHA
          LDA #$01
          PHA
          JSR L5A0A
          adr L52B5
          JSR L5A49
          byt $02
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L4ECB
          JSR L5A49
          byt $02
          SEC
          LDY #$0A
          SBC ($80),Y
          STA $08
          TXA
          SBC #$00
          STA $09
          RTS
L3F4B:    JSR L5A6F
          byt $02, $00, $00
          LDA #$11
          STA L6035
          LDA #$40
          STA L6036
          LDA #$06
          STA L5FFA
          STX L5FFB
          STY L5FFC
          STX L5FFD
          STX L6000
          STX L6001
          STX $80
          STX $81
          JMP L3F7C
L3F76:    INC $80
          BNE L3F7C
          INC $81
L3F7C:    LDA $80
          CMP #$03
          LDA $81
          SBC #$00
          BCS L3FBC
          LDA $80
          STA $1C
          LDA $81
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          TYA
          STA ($18,X)
          TXA
          STA ($18),Y
          CLC
          LDA $80
          ADC #$4D
          STA $1C
          LDA $81
          ADC #$60
          STA $1D
          LDA #$02
          STA ($1C,X)
          JMP L3F76
L3FBC:    LDA $80
          CMP #$0B
          LDA $81
          SBC #$00
          BCS L3FF3
          CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          TXA
          STA ($18,X)
          STA ($18),Y
          JMP L3FBC
L3FF3:    TXA
          PHA
          PHA
          PHA
          PHA
          JSR L5A0A
          adr L0910
          JSR L5A49
          byt $04
          LDA $09
          PHA
          LDA $08
          PHA
          JSR L5A0A
          adr L23F5
          JSR L5A49
          byt $02
          RTS
L4011:    JSR L5A6F
          byt $02, $00, $00
          STX $80
          STX $81
          JMP L4024
L401E:    INC $80
          BNE L4024
          INC $81
L4024:    LDA $80
          CMP #$0B
          LDA $81
          SBC #$00
          BCS L407D
          LDA $80
          STA $1C
          LDA $81
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18,X)
          ORA ($18),Y
          BEQ L407A
          LDA $80
          STA $1C
          LDA $81
          STA $1D
          TYA
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18),Y
          PHA
          LDA ($18,X)
          PHA
          JSR L5A0A
          adr L4D7B
          JSR L5A49
          byt $02
L407A:    JMP L401E
L407D:    RTS
L407E:    JSR L5A6F
          byt $04, $00, $00
          PHA
          LDA #$06
          PHA
          TXA
          PHA
          LDA #$05
          PHA
          TXA
          PHA
          TYA
          PHA
          TXA
          PHA
          PHA
          LDY #$0A
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L4140
          JSR L5A49
          byt $0A
          LDA $08
          STA $82
          LDA $09
          STA $83
          LDA $83
          BPL L40B9
          LDA #$FF
          STA $08
          STA $09
          RTS
L40B9:    LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L4D7B
          JSR L5A49
          byt $02
          JSR L52AD
          LDX #$00
          LDA $08
          STA $80
          LDA $09
          STA $81
          LDY #$0B
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          STA $1D
          LDA #$08
          LDY #$1C
          JSR L59AE
          LDA $1C
          LDY #$06
          STA ($80),Y
          LDA $1D
          INY
          STA ($80),Y
          TXA
          PHA
          LDA #$06
          PHA
          TXA
          PHA
          LDA #$01
          PHA
          TXA
          PHA
          PHA
          PHA
          LDA #$01
          PHA
          LDY #$0A
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L4140
          JSR L5A49
          byt $0A
          RTS
L4116:    JSR L5A6F
          byt $00, $00, $00
          PHA
          PHA
          PHA
          TYA
          PHA
          TXA
          PHA
          TYA
          PHA
          LDY #$0C
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L4140
          JSR L5A49
          byt $0A
          RTS
L4140:    JSR L5A6F
          byt $0A, $00, $00
          STX $80
          STX $81
          JMP L4153
L414D:    INC $80
          BNE L4153
          INC $81
L4153:    LDA $80
          CMP #$0B
          LDA $81
          SBC #$00
          BVS L415D
L415D:    BPL L4184
          LDA $80
          STA $1C
          LDA $81
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18,X)
          ORA ($18),Y
          BEQ L418B
          JMP L414D
L4184:    LDA #$FF
          STA $08
          STA $09
          RTS
L418B:    JSR L52AD
          LDX #$00
          LDA $08
          STA $84
          LDA $09
          STA $85
          LDA $85
          PHA
          LDA $84
          PHA
          LDY #$0A
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L45A4
          JSR L5A49
          byt $04
          LDA $08
          STA $82
          LDA $09
          STA $83
          LDA $09
          BPL L41C3
          LDA #$FF
          STA $08
          STA $09
          RTS
L41C3:    LDA $82
          ORA $83
          BEQ L422C
          LDY #$0F
          LDA ($04),Y
          CMP #$01
          BNE L41D6
          INY
          LDA ($04),Y
          CMP #$00
L41D6:    BEQ L41DF
          LDA #$0D
          STA $08
          STX $09
          RTS
L41DF:    LDY #$0C
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          TXA
          PHA
          PHA
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L541A
          JSR L5A49
          byt $06
          LDA $09
          BPL L4205
          LDA #$FF
          STA $08
          STA $09
          RTS
L4205:    LDA $80
          STA $1C
          LDA $81
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA $82
          STA ($18,X)
          LDA $83
          STA ($18),Y
          JMP L4375
L422C:    LDA $85
          PHA
          LDA $84
          PHA
          JSR L5A0A
          adr L4391
          JSR L5A49
          byt $02
          LDA $08
          STA $86
          LDA $09
          STA $87
          LDA $08
          ORA $09
          BNE L4250
          LDA #$FF
          STA $08
          STA $09
          RTS
L4250:    LDY #$0F
          LDA ($04),Y
          STA ($84,X)
          TXA
          LDY #$02
          STA ($84),Y
          INY
          STA ($84),Y
          LDY #$0E
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L52B5
          JSR L5A49
          byt $02
          LDY #$0A
          LDA ($84),Y
          STA $82
          TXA
          STA $83
          LDA $82
          ORA $83
          BEQ L42CE
          LDA $82
          LDY #$11
          CMP ($04),Y
          BNE L428C
          LDA $83
          INY
          CMP ($04),Y
L428C:    BEQ L42CE
          LDA $87
          PHA
          LDA $86
          PHA
          JSR L5A0A
          adr L4ECB
          JSR L5A49
          byt $02
          LDA $82
          CMP #$09
          BNE L42A7
          LDA $83
          CMP #$00
L42A7:    BNE L42C2
          TXA
          PHA
          LDA #$10
          PHA
          LDA #$60
          PHA
          LDA #$22
          PHA
          TXA
          PHA
          LDA #$02
          PHA
          JSR L5A0A
          adr L50E4
          JSR L5A49
          byt $06
L42C2:    SEC
          TXA
          SBC $82
          STA $08
          TXA
          SBC $83
          STA $09
          RTS
L42CE:    LDA $80
          STA $1C
          LDA $81
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA $86
          STA ($18,X)
          LDA $87
          STA ($18),Y
          TXA
          LDY #$0B
          CMP ($04),Y
          INY
          SBC ($04),Y
          BVS L42FC
L42FC:    BPL L4330
          TXA
          PHA
          LDA #$03
          PHA
          LDA $81
          PHA
          LDA $80
          PHA
          JSR L5A0A
          adr L52BD
          JSR L5A49
          byt $04
          LDA $08
          ORA $09
          BEQ L4330
          LDA $81
          PHA
          LDA $80
          PHA
          JSR L5A0A
          adr L4D7B
          JSR L5A49
          byt $02
          LDA #$F6
          STA $08
          LDA #$FF
          STA $09
          RTS
L4330:    LDY #$0F
          LDA ($04),Y
          CMP #$01
          BNE L433D
          INY
          LDA ($04),Y
          CMP #$00
L433D:    BNE L4375
          LDA #$0A
          STA ($84,X)
          TXA
          LDY #$02
          STA ($84),Y
          INY
          STA ($84),Y
          INY
          STA ($84),Y
          INY
          STA ($84),Y
          INY
          STA ($84),Y
          INY
          STA ($84),Y
          LDY #$1E
          LDA ($86),Y
          LDY #$0C
          STA ($84),Y
          LDY #$1F
          LDA ($86),Y
          LDY #$0D
          STA ($84),Y
          TXA
          PHA
          LDA #$01
          PHA
          JSR L5A0A
          adr L52B5
          JSR L5A49
          byt $02
L4375:    CLC
          LDA $80
          ADC #$4D
          STA $1C
          LDA $81
          ADC #$60
          STA $1D
          LDY #$0B
          LDA ($04),Y
          STA ($1C,X)
          LDA $80
          STA $08
          LDA $81
          STA $09
          RTS
L4391:    JSR L5A6F
          byt $0E, $FE, $FF
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          STX $84
          STX $85
          LDY #$06
          LDA ($80),Y
          STA $88
          INY
          LDA ($80),Y
          AND #$00
          STA $89
          LDY #$04
          LDA ($80),Y
          STA $1C
          INY
          LDA ($80),Y
          STA $1D
          LDA #$08
          LDY #$1C
          JSR L59CB
          LDA $1C
          STA $8A
          LDA $1D
          STA $8B
          LDY #$04
          LDA ($80),Y
          STA $1C
          INY
          LDA ($80),Y
          AND #$00
          STA $1D
          LDA $1C
          EOR #$FF
          STA $8C
          LDA $1D
          EOR #$FF
          STA $8D
          LDA #$D1
          LDY #$FE
          STA ($06),Y
          LDA #$03
          INY
          STA ($06),Y
          DEY
          LDA ($06),Y
          STA $1C
          INY
          LDA ($06),Y
          STA $1D
          LDA ($1C,X)
          AND #$00
          DEY
          STA ($06),Y
          LDY #$01
          LDA ($1C),Y
          LDY #$FF
          STA ($06),Y
          DEY
          LDA ($06),Y
          STA $1C
          INY
          LDA ($06),Y
          STA $1D
          LDA ($1C,X)
          STA $82
          LDY #$01
          LDA ($1C),Y
          STA $83
L441E:    LDA $82
          ORA $83
          BNE L4427
          JMP L44D2
L4427:    LDY #$1E
          LDA ($82),Y
          STA $86
          INY
          LDA ($82),Y
          STA $87
          LDA ($82,X)
          BNE L4439
          JMP L44A4
L4439:    TXA
          PHA
          LDA #$1E
          PHA
          LDA $83
          PHA
          LDA $82
          PHA
          LDY #$09
          LDA ($80),Y
          PHA
          DEY
          LDA ($80),Y
          PHA
          JSR L5A0A
          adr L453E
          JSR L5A49
          byt $06
          LDA $08
          ORA $09
          BEQ L445F
          JMP L44A4
L445F:    LDY #$26
          LDA ($86),Y
          CMP $88
          BNE L446A
          TXA
          CMP $89
L446A:    BEQ L446F
          JMP L44A4
L446F:    LDY #$27
          LDA ($86),Y
          CMP $8A
          BNE L447A
          TXA
          CMP $8B
L447A:    BEQ L447F
          JMP L44A4
L447F:    LDA $8C
          CMP #$FF
          BNE L4489
          LDA $8D
          CMP #$FF
L4489:    BNE L448E
          JMP L449F
L448E:    LDA $8C
          LDY #$28
          CMP ($86),Y
          BNE L449A
          LDA $8D
          CMP #$00
L449A:    BEQ L449F
          JMP L44A4
L449F:    STX $08
          STX $09
          RTS
L44A4:    LDA $84
          ORA $85
          BEQ L44AD
          JMP L44BC
L44AD:    LDA ($82,X)
          BEQ L44B4
          JMP L44BC
L44B4:    LDA $82
          STA $84
          LDA $83
          STA $85
L44BC:    LDY #$24
          LDA ($82),Y
          STA $1C
          INY
          LDA ($82),Y
          STA $1D
          LDA $1C
          STA $82
          LDA $1D
          STA $83
          JMP L441E
L44D2:    LDA $84
          ORA $85
          BEQ L44DB
          JMP L44E0
L44DB:    STX $08
          STX $09
          RTS
L44E0:    LDA $84
          STA $82
          LDA $85
          STA $83
          LDY #$1E
          LDA ($82),Y
          LDY #$0C
          STA ($80),Y
          LDY #$1F
          LDA ($82),Y
          LDY #$0D
          STA ($80),Y
          LDY #$20
          LDA ($82),Y
          LDY #$0E
          STA ($80),Y
          LDY #$21
          LDA ($82),Y
          LDY #$0F
          STA ($80),Y
          LDY #$22
          LDA ($82),Y
          LDY #$10
          STA ($80),Y
          LDY #$23
          LDA ($82),Y
          LDY #$11
          STA ($80),Y
          TXA
          PHA
          LDA #$1E
          PHA
          LDY #$09
          LDA ($80),Y
          PHA
          DEY
          LDA ($80),Y
          PHA
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L457E
          JSR L5A49
          byt $06
          LDA $82
          STA $08
          LDA $83
          STA $09
          RTS
L453E:    LDY #$05
L4540:    LDA ($02),Y
          STA $0008,Y
          DEY
          BPL L4540
          DEC $09
          DEC $0B
          LDX $0C
L454E:    TXA
          BNE L4553
          DEC $0D
L4553:    BMI L457A
          DEX
          INY
          BNE L455D
          INC $09
          INC $0B
L455D:    LDA ($08),Y
          BNE L456C
          LDA ($0A),Y
          BEQ L457A
L4565:    LDY #$FF
L4567:    STY $08
          STY $09
          RTS
L456C:    CMP ($0A),Y
          BEQ L454E
          BCC L4565
          LDY #$00
          STY $09
          INY
          STY $08
          RTS
L457A:    LDY #$00
          BEQ L4567
L457E:    LDY #$05
L4580:    LDA ($02),Y
          STA $0008,Y
          DEY
          BPL L4580
          DEC $09
          DEC $0B
          LDX $0C
L458E:    TXA
          BNE L4595
          DEC $0D
          BMI L45A3
L4595:    DEX
          INY
          BNE L459D
          INC $09
          INC $0B
L459D:    LDA ($0A),Y
          STA ($08),Y
          BNE L458E
L45A3:    RTS
L45A4:    JSR L5A6F
          byt $08, $00, $00
          LDY #$0B
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          LDY #$0A
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L476C
          JSR L5A49
          byt $02
          LDA $09
          BMI L45D8
          LDA L6004
          AND #$7F
          STA $1C
          LDA $1C
          CMP #$20
          BNE L45DF
L45D8:    LDA #$FF
          STA $08
          STA $09
          RTS
L45DF:    LDA #$01
          STA $82
          STX $83
          JMP L45EE
L45E8:    INC $82
          BNE L45EE
          INC $83
L45EE:    LDA #$05
          CMP $82
          TXA
          SBC $83
          BVS L462E
          BMI L462E
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L467B
          JSR L5A49
          byt $02
          LDA $08
          STA $84
          LDA $09
          STA $85
          LDA $08
          ORA $09
          BEQ L462B
          LDA $84
          CMP #$FF
          BNE L4620
          LDA $85
          CMP #$FF
L4620:    BEQ L462E
          LDA $82
          STA $08
          LDA $83
          STA $09
          RTS
L462B:    JMP L45E8
L462E:    LDA L5FFE
          STA $1C
          LDA L5FFF
          STA $1D
          LDA #$08
          LDY #$1C
          JSR L59AE
          LDA $1C
          ORA L6033
          LDY #$04
          STA ($80),Y
          LDA $1D
          ORA L6034
          INY
          STA ($80),Y
          INY
          LDA ($80),Y
          AND #$00
          STA $1C
          INY
          LDA ($80),Y
          STA $1D
          LDA $1C
          ORA L6002
          DEY
          STA ($80),Y
          LDA $1D
          ORA L6003
          INY
          STA ($80),Y
          LDA #$04
          INY
          STA ($80),Y
          LDA #$60
          INY
          STA ($80),Y
          STX $08
          STX $09
          RTS
L467B:    JSR L5A6F
          byt $00, $FA, $FF
          CLC
          LDY #$09
          LDA ($04),Y
          ADC #$FF
          STA $1C
          INY
          LDA ($04),Y
          ADC #$FF
          STA $1D
          LDA #$04
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$96
          LDY #$FE
          STA ($06),Y
          LDA $1D
          ADC #$54
          INY
          STA ($06),Y
          DEY
          LDA ($06),Y
          STA $1C
          INY
          LDA ($06),Y
          STA $1D
          LDA ($1C,X)
          BNE L46B9
          JMP L4765
L46B9:    LDA #$04
          LDY #$FC
          STA ($06),Y
          LDA #$60
          INY
          STA ($06),Y
          TXA
          LDY #$FA
          STA ($06),Y
          INY
          STA ($06),Y
          JMP L46DF
L46CF:    CLC
          LDY #$FA
          LDA ($06),Y
          ADC #$01
          STA ($06),Y
          INY
          LDA ($06),Y
          ADC #$00
          STA ($06),Y
L46DF:    LDY #$FA
          LDA ($06),Y
          CMP #$06
          INY
          LDA ($06),Y
          SBC #$00
          BVS L46F1
          BMI L46F1
          JMP L4760
L46F1:    INY
          LDA ($06),Y
          STA $1C
          INY
          LDA ($06),Y
          STA $1D
          LDA ($1C,X)
          AND #$7F
          STA $18
          LDA $18
          CMP #$20
          BEQ L470A
          JMP L4727
L470A:    INY
          LDA ($06),Y
          STA $1C
          INY
          LDA ($06),Y
          STA $1D
          LDA ($1C,X)
          BEQ L471B
          JMP L4727
L471B:    LDY #$09
          LDA ($04),Y
          STA $08
          INY
          LDA ($04),Y
          STA $09
          RTS
L4727:    CLC
          LDY #$FC
          LDA ($06),Y
          STA $1C
          ADC #$01
          STA ($06),Y
          INY
          LDA ($06),Y
          STA $1D
          ADC #$00
          STA ($06),Y
          LDA ($1C,X)
          AND #$7F
          STA $18
          CLC
          INY
          LDA ($06),Y
          STA $1C
          ADC #$01
          STA ($06),Y
          INY
          LDA ($06),Y
          STA $1D
          ADC #$00
          STA ($06),Y
          LDA $18
          CMP ($1C,X)
          BEQ L475D
          JMP L4760
L475D:    JMP L46CF
L4760:    STX $08
          STX $09
          RTS
L4765:    LDA #$FF
          STA $08
          STA $09
          RTS
L476C:    JSR L5A6F
          byt $0A, $C4, $FF
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          LDA ($80,X)
          BEQ L4784
          JMP L478B
L4784:    LDA #$FF
          STA $08
          STA $09
          RTS
L478B:    LDA $80
          STA $86
          LDA $81
          STA $87
          JMP L479C
L4796:    INC $86
          BNE L479C
          INC $87
L479C:    LDA ($86,X)
          BNE L47A3
          JMP L47AF
L47A3:    LDA ($86,X)
          CMP #$2C
          BNE L47AC
          JMP L47AF
L47AC:    JMP L4796
L47AF:    LDA L5FFA
          STA L6002
          LDA L5FFB
          STA L6003
          LDA L5FFC
          STA L5FFE
          LDA L5FFD
          STA L5FFF
          LDA L6000
          STA L6033
          LDA L6001
          STA L6034
          STX $82
          STX $83
          JMP L47E0
L47DA:    INC $82
          BNE L47E0
          INC $83
L47E0:    LDA $82
          CMP #$1E
          LDA $83
          SBC #$00
          BVS L47EF
          BMI L47EF
          JMP L4803
L47EF:    CLC
          LDA $82
          ADC #$04
          STA $1C
          LDA $83
          ADC #$60
          STA $1D
          LDA #$A0
          STA ($1C,X)
          JMP L47DA
L4803:    STX $88
L4805:    LDA ($80,X)
          BNE L480C
          JMP L491F
L480C:    CLC
          LDA #$C4
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          LDA $1C
          STA $86
          LDA $1D
          STA $87
L4820:    LDA ($80,X)
          BNE L4827
          JMP L4859
L4827:    LDA ($80,X)
          CMP #$2C
          BNE L4830
          JMP L4859
L4830:    CLC
          LDA $86
          STA $1C
          ADC #$01
          STA $86
          LDA $87
          STA $1D
          ADC #$00
          STA $87
          CLC
          LDA $80
          STA $18
          ADC #$01
          STA $80
          LDA $81
          STA $19
          ADC #$00
          STA $81
          LDA ($18,X)
          STA ($1C,X)
          JMP L4820
L4859:    TXA
          STA ($86,X)
          CLC
          LDA #$C4
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          LDA $1D
          PHA
          LDA $1C
          PHA
          JSR L5A0A
          adr L4924
          JSR L5A49
          byt $02
          LDA $09
          BMI L487E
          JMP L490B
L487E:    LDA $88
          BEQ L4885
          JMP L4904
L4885:    STX $82
          STX $83
          JMP L4892
L488C:    INC $82
          BNE L4892
          INC $83
L4892:    LDA $82
          CMP #$1E
          LDA $83
          SBC #$00
          BVS L48A1
          BMI L48A1
          JMP L4901
L48A1:    CLC
          LDA #$C4
          ADC $06
          STA $1C
          TXA
          ADC $07
          STA $1D
          CLC
          LDA $82
          ADC $1C
          STA $18
          LDA $83
          ADC $1D
          STA $19
          LDA ($18,X)
          STA $84
          TXA
          STA $85
          LDA $84
          ORA $85
          BNE L48CA
          JMP L4901
L48CA:    CLC
          LDA $82
          ADC #$04
          STA $1C
          LDA $83
          ADC #$60
          STA $1D
          LDA $85
          PHA
          LDA $84
          PHA
          LDX #$1C
          JSR L5BB8
          JSR L5A0A
          adr L4ACA
          JSR L5A49
          byt $02
          LDX #$1C
          JSR L5BDD
          LDA $08
          ORA #$80
          STA $18
          LDA $09
          STA $19
          LDA $18
          STA ($1C,X)
          JMP L488C
L4901:    JMP L490B
L4904:    LDA #$FF
          STA $08
          STA $09
          RTS
L490B:    LDA ($80,X)
          BNE L4912
          JMP L4918
L4912:    INC $80
          BNE L4918
          INC $81
L4918:    LDA #$01
          STA $88
          JMP L4805
L491F:    STX $08
          STX $09
          RTS
L4924:    JSR L5A6F
          byt $04, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          LDA L6033
          STA $AA66
          LDA L6034
          STA $AA67
          CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          TXA
          PHA
          LDA ($1C,X)
          PHA
          JSR L5A0A
          adr L4ACA
          JSR L5A49
          byt $02
          JMP L4AB2
L4963:    CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          CLC
          LDA ($1C,X)
          ADC #$D0
          STA $18
          TXA
          ADC #$FF
          STA $19
          LDA $18
          STA $82
          LDA $19
          STA $83
          LDA $82
          CMP #$01
          LDA $83
          SBC #$00
          BVS L4994
          BPL L4997
L4994:    JMP L49AC
L4997:    LDA #$07
          CMP $82
          TXA
          SBC $83
          BVS L49A2
          BPL L49A5
L49A2:    JMP L49AC
L49A5:    LDA ($80,X)
          BNE L49AC
          JMP L49B3
L49AC:    LDA #$FF
          STA $08
          STA $09
          RTS
L49B3:    LDA $82
          STA L6002
          LDA $83
          STA L6003
          JMP L4AC5
L49C0:    CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          CLC
          LDA ($1C,X)
          ADC #$D0
          STA $18
          TXA
          ADC #$FF
          STA $19
          LDA $18
          STA $82
          LDA $19
          STA $83
          LDA $82
          CMP #$01
          LDA $83
          SBC #$00
          BVS L49F1
          BPL L49F4
L49F1:    JMP L4A09
L49F4:    LDA #$02
          CMP $82
          TXA
          SBC $83
          BVS L49FF
          BPL L4A02
L49FF:    JMP L4A09
L4A02:    LDA ($80,X)
          BNE L4A09
          JMP L4A10
L4A09:    LDA #$FF
          STA $08
          STA $09
          RTS
L4A10:    LDA $82
          STA L5FFE
          LDA $83
          STA L5FFF
          JMP L4AC5
L4A1D:    STX $82
          STX $83
L4A21:    LDA ($80,X)
          CMP #$30
          BCS L4A2A
          JMP L4A6F
L4A2A:    LDA #$39
          CMP ($80,X)
          BCS L4A33
          JMP L4A6F
L4A33:    CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          LDA $82
          STA $18
          LDA $83
          STA $19
          LDA #$0A
          LDY #$18
          JSR L58DC
          CLC
          LDA ($1C,X)
          ADC $18
          STA $10
          TXA
          ADC $19
          STA $11
          CLC
          LDA $10
          ADC #$D0
          STA $82
          LDA $11
          ADC #$FF
          STA $83
          JMP L4A21
L4A6F:    LDA $83
          BPL L4A76
          JMP L4A8B
L4A76:    LDA #$FE
          CMP $82
          TXA
          SBC $83
          BVS L4A81
          BPL L4A84
L4A81:    JMP L4A8B
L4A84:    LDA ($80,X)
          BNE L4A8B
          JMP L4A92
L4A8B:    LDA #$FF
          STA $08
          STA $09
          RTS
L4A92:    LDA $82
          STA L6033
          LDA $83
          STA L6034
          LDA L6033
          STA $AA66
          LDA L6034
          STA $AA67
          JMP L4AC5
L4AAB:    LDA #$FF
          STA $08
          STA $09
          RTS
L4AB2:    JSR L5B0E
          byt $03, $00, $53, $00
          adr L4963
          adr $0044
          adr L49C0
          adr $0056
          adr L4A1D
          adr L4AAB
L4AC5:    STX $08
          STX $09
          RTS
L4ACA:    JSR L5A6F
          byt $02, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          LDA $80
          CMP #$61
          LDA $81
          SBC #$00
          BVS L4B00
          BMI L4B00
          LDA #$7A
          CMP $80
          TXA
          SBC $81
          BVS L4B00
          BMI L4B00
          CLC
          LDA $80
          ADC #$E0
          STA $08
          LDA $81
          ADC #$FF
          STA $09
          RTS
L4B00:    LDA $80
          STA $08
          LDA $81
          STA $09
          RTS
L4B09:    JSR L5A6F
          byt $02, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          LDA $80
          CMP #$41
          LDA $81
          SBC #$00
          BVS L4B3F
          BMI L4B3F
          LDA #$5A
          CMP $80
          TXA
          SBC $81
          BVS L4B3F
          BMI L4B3F
          CLC
          LDA $80
          ADC #$20
          STA $08
          LDA $81
          ADC #$00
          STA $09
          RTS
L4B3F:    LDA $80
          STA $08
          LDA $81
          STA $09
          RTS
L4B48:    JSR L5A6F
          byt $0C, $00, $00
          LDY #$09
          LDA ($04),Y
          CMP #$0B
          INY
          LDA ($04),Y
          SBC #$00
          BVS L4B5B
L4B5B:    BPL L4B9D
          DEY
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18,X)
          ORA ($18),Y
          BEQ L4B9D
          CLC
          LDY #$09
          LDA ($04),Y
          ADC #$4D
          STA $1C
          INY
          LDA ($04),Y
          ADC #$60
          STA $1D
          LDA ($1C,X)
          CMP #$01
          BEQ L4B9D
          LDY #$0E
          LDA ($04),Y
          BPL L4BA4
L4B9D:    LDA #$FF
          STA $08
          STA $09
          RTS
L4BA4:    LDY #$09
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18,X)
          STA $88
          LDA ($18),Y
          STA $89
          LDA #$05
          CMP $88
          TXA
          SBC $89
          BCC L4BFA
          LDY #$0E
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          TXA
          PHA
          LDA #$02
          PHA
          LDA $89
          PHA
          LDA $88
          PHA
          JSR L5A0A
          adr L541A
          JSR L5A49
          byt $08
          RTS
L4BFA:    LDY #$1E
          LDA ($88),Y
          STA $8A
          INY
          LDA ($88),Y
          STA $8B
          JSR L52AD
          LDX #$00
          LDA $08
          STA $86
          LDA $09
          STA $87
          LDA #$03
          STA ($86,X)
          LDA #$02
          LDY #$01
          STA ($86),Y
          LDY #$1B
          LDA ($8A),Y
          STA $80
          INY
          LDA ($8A),Y
          STA $81
          LDY #$19
          LDA ($8A),Y
          STA $82
          INY
          LDA ($8A),Y
          STA $83
          LDY #$0D
          LDA ($04),Y
          LDY #$06
          STA ($86),Y
          LDY #$0E
          LDA ($04),Y
          LDY #$07
          STA ($86),Y
          LDY #$0B
          LDA ($04),Y
          LDY #$08
          STA ($86),Y
          LDY #$0C
          LDA ($04),Y
          LDY #$09
          STA ($86),Y
          LDA $8A
          LDY #$0C
          STA ($86),Y
          LDA $8B
          INY
          STA ($86),Y
          LDY #$20
          LDA ($88),Y
          LDY #$0E
          STA ($86),Y
          LDY #$21
          LDA ($88),Y
          LDY #$0F
          STA ($86),Y
          LDY #$22
          LDA ($88),Y
          LDY #$10
          STA ($86),Y
          LDY #$23
          LDA ($88),Y
          LDY #$11
          STA ($86),Y
          TXA
          PHA
          LDA #$01
          PHA
          JSR L5A0A
          adr L52B5
          JSR L5A49
          byt $02
          LDY #$0A
          LDA ($86),Y
          STA $84
          TXA
          STA $85
          LDA $84
          ORA $85
          BEQ L4CB2
          LDA $84
          CMP #$05
          BNE L4CA4
          LDA $85
          CMP #$00
L4CA4:    BEQ L4CB2
          SEC
          TXA
          SBC $84
          STA $08
          TXA
          SBC $85
          STA $09
          RTS
L4CB2:    SEC
          LDY #$19
          LDA ($8A),Y
          SBC $82
          STA $1C
          INY
          LDA ($8A),Y
          SBC $83
          STA $1D
          LDA #$08
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          LDY #$1B
          ADC ($8A),Y
          STA $18
          LDA $1D
          INY
          ADC ($8A),Y
          STA $19
          SEC
          LDA $18
          SBC $80
          STA $84
          LDA $19
          SBC $81
          STA $85
          LDA $84
          ORA $85
          BNE L4CF1
          STX $08
          STX $09
          RTS
L4CF1:    LDY #$25
          LDA ($8A),Y
          AND #$7F
          BNE L4D72
          LDY #$0C
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L56F0
          JSR L5A49
          byt $02
          LDA $08
          LDY #$0D
          STA ($04),Y
          LDA $09
          INY
          STA ($04),Y
          DEY
          LDA ($04),Y
          CMP $84
          INY
          LDA ($04),Y
          SBC $85
          BVS L4D26
          BMI L4D28
          BPL L4D72
L4D26:    BMI L4D72
L4D28:    TXA
          PHA
          LDA #$01
          PHA
          SEC
          DEY
          LDA ($04),Y
          SBC $84
          STA $1C
          INY
          LDA ($04),Y
          SBC $85
          STA $1D
          LDA $1D
          LDY #$00
          ASL
          BCC L4D44
          DEY
L4D44:    STY $1E
          STY $1F
          LDA $1F
          PHA
          LDA $1E
          PHA
          LDA $1D
          PHA
          LDA $1C
          PHA
          LDY #$0A
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          JSR L5A0A
          adr L4EE0
          JSR L5A49
          byt $08
          LDY #$0D
          LDA ($04),Y
          STA $08
          INY
          LDA ($04),Y
          STA $09
          RTS
L4D72:    LDA $84
          STA $08
          LDA $85
          STA $09
          RTS
L4D7B:    JSR L5A6F
          byt $06, $00, $00
          LDY #$09
          LDA ($04),Y
          CMP #$0B
          INY
          LDA ($04),Y
          SBC #$00
          BVS L4D8E
L4D8E:    BPL L4DBC
          DEY
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18,X)
          STA $82
          LDA ($18),Y
          STA $83
          LDA $82
          ORA $83
          BNE L4DC3
L4DBC:    LDA #$FF
          STA $08
          STA $09
          RTS
L4DC3:    LDA #$05
          CMP $82
          TXA
          SBC $83
          BCC L4E09
          TXA
          PHA
          LDA #$03
          PHA
          LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L541A
          JSR L5A49
          byt $04
          LDY #$09
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          TXA
          STA ($18,X)
          STA ($18),Y
          STX $08
          STX $09
          RTS
L4E09:    JSR L52AD
          LDX #$00
          LDA $08
          STA $80
          LDA $09
          STA $81
          LDA #$02
          STA ($80,X)
          LDY #$1E
          LDA ($82),Y
          LDY #$0C
          STA ($80),Y
          LDY #$1F
          LDA ($82),Y
          LDY #$0D
          STA ($80),Y
          LDY #$20
          LDA ($82),Y
          LDY #$0E
          STA ($80),Y
          LDY #$21
          LDA ($82),Y
          LDY #$0F
          STA ($80),Y
          LDY #$22
          LDA ($82),Y
          LDY #$10
          STA ($80),Y
          LDY #$23
          LDA ($82),Y
          LDY #$11
          STA ($80),Y
          LDY #$09
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          TXA
          STA ($18,X)
          STA ($18),Y
          PHA
          TYA
          PHA
          JSR L5A0A
          adr L52B5
          JSR L5A49
          byt $02
          SEC
          LDY #$0A
          SBC ($80),Y
          STA $1C
          TXA
          SBC #$00
          STA $1D
          LDA $1C
          STA $84
          LDA $1D
          STA $85
          LDA $1C
          CMP #$F7
          BNE L4E98
          LDA $1D
          CMP #$FF
L4E98:    BNE L4EB3
          TXA
          PHA
          LDA #$10
          PHA
          LDA #$60
          PHA
          LDA #$22
          PHA
          TXA
          PHA
          LDA #$02
          PHA
          JSR L5A0A
          adr L50E4
          JSR L5A49
          byt $06
L4EB3:    LDA $83
          PHA
          LDA $82
          PHA
          JSR L5A0A
          adr L4ECB
          JSR L5A49
          byt $02
          LDA $84
          STA $08
          LDA $85
          STA $09
          RTS
L4ECB:    JSR L5A6F
          byt $00, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          STA $1D
          TXA
          STA ($1C,X)
          RTS
L4EE0:    JSR L5A6F
          byt $06, $FC, $FF
          LDY #$09
          LDA ($04),Y
          CMP #$0B
          INY
          LDA ($04),Y
          SBC #$00
          BVS L4EF3
L4EF3:    BPL L4F32
          DEY
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18,X)
          STA $82
          LDA ($18),Y
          STA $83
          LDA $82
          ORA $83
          BEQ L4F32
          TYA
          LDY #$0F
          CMP ($04),Y
          TXA
          INY
          SBC ($04),Y
          BVS L4F32
          BMI L4F32
          LDA ($04),Y
          BPL L4F3D
L4F32:    LDA #$FF
          STA $08
          STA $09
          STA $0A
          STA $0B
          RTS
L4F3D:    LDA #$05
          CMP $82
          TXA
          SBC $83
          BCC L4F4F
          STX $08
          STX $09
          STX $0A
          STX $0B
          RTS
L4F4F:    LDY #$1E
          LDA ($82),Y
          STA $84
          INY
          LDA ($82),Y
          STA $85
          JSR L52AD
          LDX #$00
          LDA $08
          STA $80
          LDA $09
          STA $81
          LDA #$0A
          STA ($80,X)
          LDY #$19
          LDA ($84),Y
          STA $1C
          INY
          LDA ($84),Y
          STA $1D
          LDY #$00
          ASL
          BCC L4F7C
          DEY
L4F7C:    STY $1E
          STY $1F
          LDA $1C
          LDY #$FC
          STA ($06),Y
          LDA $1D
          INY
          STA ($06),Y
          LDA $1E
          INY
          STA ($06),Y
          LDA $1F
          INY
          STA ($06),Y
          LDY #$1B
          LDA ($84),Y
          STA $1C
          INY
          LDA ($84),Y
          STA $1D
          LDY #$00
          ASL
          BCC L4FA6
          DEY
L4FA6:    STY $1E
          STY $1F
          LDY #$FC
          LDA ($06),Y
          STA $18
          INY
          LDA ($06),Y
          STA $19
          INY
          LDA ($06),Y
          STA $1A
          INY
          LDA ($06),Y
          STA $1B
          LDA #$08
          STA $10
          STX $11
          STX $12
          STX $13
          LDX #$10
          LDY #$18
          JSR L5B5F
          CLC
          LDA $1C
          ADC $18
          LDY #$FC
          STA ($06),Y
          LDA $1D
          ADC $19
          INY
          STA ($06),Y
          LDA $1E
          ADC $1A
          INY
          STA ($06),Y
          LDA $1F
          ADC $1B
          INY
          STA ($06),Y
          LDY #$0F
          LDA ($04),Y
          CMP #$01
          BNE L4FFB
          INY
          LDA ($04),Y
          CMP #$00
L4FFB:    BNE L502B
          CLC
          LDY #$0B
          LDA ($04),Y
          LDY #$FC
          ADC ($06),Y
          LDY #$0B
          STA ($04),Y
          INY
          LDA ($04),Y
          LDY #$FD
          ADC ($06),Y
          LDY #$0C
          STA ($04),Y
          INY
          LDA ($04),Y
          LDY #$FE
          ADC ($06),Y
          LDY #$0D
          STA ($04),Y
          INY
          LDA ($04),Y
          LDY #$FF
          ADC ($06),Y
          LDY #$0E
          STA ($04),Y
L502B:    LDY #$0E
          LDA ($04),Y
          BPL L503C
          LDA #$FF
          STA $08
          STA $09
          STA $0A
          STA $0B
          RTS
L503C:    LDY #$0B
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          STA $1D
          INY
          LDA ($04),Y
          STA $1E
          INY
          LDA ($04),Y
          STA $1F
          LDA #$08
          STA $18
          STX $19
          STX $1A
          STX $1B
          LDX #$18
          LDY #$1C
          JSR L5B86
          LDA $1C
          INY
          STA ($80),Y
          LDA $1D
          INY
          STA ($80),Y
          LDY #$0B
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          AND #$00
          STA $1D
          INY
          LDA ($04),Y
          AND #$00
          STA $1E
          INY
          LDA ($04),Y
          AND #$00
          STA $1F
          LDA $1C
          LDY #$04
          STA ($80),Y
          LDA $1D
          INY
          STA ($80),Y
          LDY #$1E
          LDA ($82),Y
          LDY #$0C
          STA ($80),Y
          LDY #$1F
          LDA ($82),Y
          LDY #$0D
          STA ($80),Y
          TXA
          PHA
          LDA #$01
          PHA
          JSR L5A0A
          adr L52B5
          JSR L5A49
          byt $02
          LDY #$0A
          LDA ($80),Y
          BEQ L50CE
          SEC
          TXA
          SBC ($80),Y
          STA $08
          TXA
          SBC #$00
          STA $09
          LDA $09
          LDY #$00
          ASL
          BCC L50C9
          DEY
L50C9:    STY $0A
          STY $0B
          RTS
L50CE:    LDY #$0B
          LDA ($04),Y
          STA $08
          INY
          LDA ($04),Y
          STA $09
          INY
          LDA ($04),Y
          STA $0A
          INY
          LDA ($04),Y
          STA $0B
          RTS
L50E4:    JSR L5A6F
          byt $0C, $00, $00
          LDY #$09
          LDA ($04),Y
          CMP #$0B
          INY
          LDA ($04),Y
          SBC #$00
          BVS L50F7
L50F7:    BPL L5137
          DEY
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18,X)
          ORA ($18),Y
          BEQ L5137
          CLC
          LDY #$09
          LDA ($04),Y
          ADC #$4D
          STA $1C
          INY
          LDA ($04),Y
          ADC #$60
          STA $1D
          LDA ($1C,X)
          BEQ L5137
          LDY #$0E
          LDA ($04),Y
          BPL L513E
L5137:    LDA #$FF
          STA $08
          STA $09
          RTS
L513E:    LDY #$0D
          LDA ($04),Y
          INY
          ORA ($04),Y
          BNE L514C
          STX $08
          STX $09
          RTS
L514C:    LDY #$09
          LDA ($04),Y
          STA $1C
          INY
          LDA ($04),Y
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18,X)
          STA $88
          LDA ($18),Y
          STA $89
          LDA #$05
          CMP $88
          TXA
          SBC $89
          BCC L51A2
          LDY #$0E
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          TXA
          PHA
          LDA #$01
          PHA
          LDA $89
          PHA
          LDA $88
          PHA
          JSR L5A0A
          adr L541A
          JSR L5A49
          byt $08
          RTS
L51A2:    LDY #$1E
          LDA ($88),Y
          STA $8A
          INY
          LDA ($88),Y
          STA $8B
          JSR L52AD
          LDX #$00
          LDA $08
          STA $86
          LDA $09
          STA $87
          LDA #$04
          STA ($86,X)
          LDA #$02
          LDY #$01
          STA ($86),Y
          LDY #$1B
          LDA ($8A),Y
          STA $80
          INY
          LDA ($8A),Y
          STA $81
          LDY #$19
          LDA ($8A),Y
          STA $82
          INY
          LDA ($8A),Y
          STA $83
          CLC
          LDY #$0D
          LDA ($04),Y
          ADC #$FF
          LDY #$06
          STA ($86),Y
          LDY #$0E
          LDA ($04),Y
          ADC #$FF
          LDY #$07
          STA ($86),Y
          LDY #$0B
          LDA ($04),Y
          LDY #$08
          STA ($86),Y
          LDY #$0C
          LDA ($04),Y
          LDY #$09
          STA ($86),Y
          LDA $8A
          LDY #$0C
          STA ($86),Y
          LDA $8B
          INY
          STA ($86),Y
          LDY #$20
          LDA ($88),Y
          LDY #$0E
          STA ($86),Y
          LDY #$21
          LDA ($88),Y
          LDY #$0F
          STA ($86),Y
          LDY #$22
          LDA ($88),Y
          LDY #$10
          STA ($86),Y
          LDY #$23
          LDA ($88),Y
          LDY #$11
          STA ($86),Y
          TXA
          PHA
          LDA #$01
          PHA
          JSR L5A0A
          adr L52B5
          JSR L5A49
          byt $02
          LDY #$0A
          LDA ($86),Y
          STA $84
          TXA
          STA $85
          LDA $84
          ORA $85
          BEQ L5278
          LDA $84
          CMP #$09
          BNE L5251
          LDA $85
          CMP #$00
L5251:    BNE L526C
          TXA
          PHA
          LDA #$10
          PHA
          LDA #$60
          PHA
          LDA #$22
          PHA
          TXA
          PHA
          LDA #$02
          PHA
          JSR L5A0A
          adr L50E4
          JSR L5A49
          byt $06
L526C:    SEC
          TXA
          SBC $84
          STA $08
          TXA
          SBC $85
          STA $09
          RTS
L5278:    SEC
          LDY #$19
          LDA ($8A),Y
          SBC $82
          STA $1C
          INY
          LDA ($8A),Y
          SBC $83
          STA $1D
          LDA #$08
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          LDY #$1B
          ADC ($8A),Y
          STA $18
          LDA $1D
          INY
          ADC ($8A),Y
          STA $19
          SEC
          LDA $18
          SBC $80
          STA $08
          LDA $19
          SBC $81
          STA $09
          RTS
L52AD:    JSR DOS3SYS
          STY $08
          STA $09
          RTS
L52B5:    LDY #$00
          LDA ($02),Y
          TAX
          JMP DOS3IO
L52BD:    JSR L5A6F
          byt $04, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          LDA $81
          BMI L5300
          LDA $80
          CMP #$0B
          LDA $81
          SBC #$00
          BVS L52DC
L52DC:    BPL L5300
          LDA $80
          STA $1C
          LDA $81
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18,X)
          ORA ($18),Y
          BNE L5307
L5300:    LDA #$FF
          STA $08
          STA $09
          RTS
L5307:    LDA $80
          STA $1C
          LDA $81
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA #$05
          CMP ($18,X)
          TXA
          SBC ($18),Y
          BCC L536E
          LDY #$0E
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          DEY
          LDA ($04),Y
          PHA
          TXA
          PHA
          LDA #$04
          PHA
          LDA $80
          STA $1C
          LDA $81
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18),Y
          PHA
          LDA ($18,X)
          PHA
          JSR L5A0A
          adr L541A
          JSR L5A49
          byt $08
          RTS
L536E:    LDA $80
          STA $1C
          LDA $81
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18,X)
          STA $1C
          LDA ($18),Y
          STA $1D
          LDY #$1E
          LDA ($1C),Y
          STA $18
          INY
          LDA ($1C),Y
          STA $19
          LDY #$25
          LDA ($18),Y
          STA $82
          TXA
          STA $83
          LDY #$0B
          LDA ($04),Y
          STA $08
          INY
          LDA ($04),Y
          STA $09
          JMP L5408
L53B4:    LDA #$FF
          STA $08
          STA $09
          RTS
L53BB:    LDA $80
          STA $1C
          LDA $81
          STA $1D
          LDA #$01
          LDY #$1C
          JSR L59AE
          CLC
          LDA $1C
          ADC #$37
          STA $18
          LDA $1D
          ADC #$60
          STA $19
          LDA ($18,X)
          STA $08
          LDA ($18),Y
          STA $09
          RTS
L53E0:    LDA $82
          AND #$7F
          STA $08
          LDA $83
          AND #$00
          STA $09
          RTS
L53ED:    LDA $82
          AND #$80
          BNE L53FA
          STX $08
          STX $09
          JMP L5400
L53FA:    LDA #$01
          STA $08
          STX $09
L5400:    RTS
L5401:    LDA #$FF
          STA $08
          STA $09
          RTS
L5408:    JSR L589C
          byt $00, $00, $04, $00
          adr L5401
          adr L53B4
          adr L53BB
          adr L53E0
          adr L53ED
          RTS
L541A:    LDY #$00
          LDA ($02),Y
          TAX
          DEX
          TXA
          ASL
          ASL
          ASL
          ASL
          ADC #$96
          STA $0C
          LDA #$00
          ADC #$54
          STA $0D
          LDY #$02
          LDA ($02),Y
          CMP #$00
          BEQ L545B
          LDY #$04
          LDA ($02),Y
          BNE L5446
          LDY #$08
          LDA ($0C),Y
          INY
          ORA ($0C),Y
          BEQ L5457
L5446:    LDY #$04
          LDA ($02),Y
          AND #$01
          BNE L545B
          LDY #$0A
          LDA ($0C),Y
          INY
          ORA ($0C),Y
          BNE L545B
L5457:    LDA #$FF
          BNE L548E
L545B:    LDY #$02
          LDA ($02),Y
          ASL
          ADC #$06
          TAY
          LDA ($0C),Y
          STA $0E
          INY
          ORA ($0C),Y
          BEQ L548C
          LDA ($0C),Y
          STA $0F
          CLC
          LDA $02
          ADC #$04
          STA $02
          BCC L547B
          INC $03
L547B:    JSR L5493
          SEC
          LDA $02
          SBC #$04
          STA $02
          BCS L5489
          DEC $03
L5489:    JMP L5492
L548C:    LDA #$00
L548E:    STA $08
          STA $09
L5492:    RTS
L5493:    JMP ($000E)
L5496:    byt "KB:"
          byt $00, $00, $00, $00, $00
          byt "9U"
          byt $B7
          byt "T"
          byt $00, $00, $94
          byt "U"
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00
L54B6:    byt $00
L54B7:    LDY #$03
L54B9:    LDA ($02),Y
          STA $000C,Y
          DEY
          BPL L54B9
          LDA L54B6
          BNE L5521
L54C6:    LDA $0E
          ORA $0F
          BEQ L5521
          LDA $0E
          BNE L54D2
          DEC $0F
L54D2:    DEC $0E
          JSR L5589
          TAX
          BNE L54DF
          INC L54B6
          BNE L5521
L54DF:    LDA $03CA
          AND #$02
          BEQ L54EC
          CPX #$0D
          BNE L54EC
          LDX #$0A
L54EC:    LDY #$00
          TXA
          STA ($0C),Y
          INC $0C
          BNE L54F7
          INC $0D
L54F7:    LDA $03CA
          AND #$01
          BEQ L551E
          TXA
          PHA
          JSR L558F
          LDA $03CA
          AND #$04
          BEQ L551D
          PLA
          PHA
          CMP #$0D
          BNE L5514
          LDA #$0A
          BNE L551A
L5514:    CMP #$0A
          BNE L551D
          LDA #$0D
L551A:    JSR L558F
L551D:    PLA
L551E:    JMP L54C6
L5521:    LDY #$00
          SEC
          LDA $0C
          SBC ($02),Y
          STA $08
          INY
          LDA $0D
          SBC ($02),Y
          STA $09
          ORA $08
          BNE L5538
          STA L54B6
L5538:    RTS
L5539:    LDY #$03
L553B:    LDA ($02),Y
          STA $000C,Y
          DEY
          BPL L553B
L5543:    LDA $0E
          ORA $0F
          BEQ L557D
          LDA $0E
          BNE L554F
          DEC $0F
L554F:    DEC $0E
          LDY #$00
          LDA ($0C),Y
          PHA
          INC $0C
          BNE L555C
          INC $0D
L555C:    JSR L558F
          LDA $03CA
          AND #$04
          BEQ L5579
          PLA
          PHA
          CMP #$0D
          BNE L5570
          LDA #$0A
          BNE L5576
L5570:    CMP #$0A
          BNE L5579
          LDA #$0D
L5576:    JSR L558F
L5579:    PLA
          JMP L5543
L557D:    LDY #$02
          LDA ($02),Y
          STA $08
          INY
          LDA ($02),Y
          STA $09
          RTS
L5589:    JSR RDKEY
          AND #$7F
          RTS
L558F:    ORA #$80
          JMP COUT
L5594:    JSR L5A6F
          byt $00, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $08
          INY
          LDA ($04),Y
          STA $09
          JMP L5606
L55A8:    JMP L561D
L55AB:    LDA $03CA
          AND #$FE
          STA $03CA
          LDY #$0B
          LDA ($04),Y
          INY
          ORA ($04),Y
          BEQ L55C4
          LDA $03CA
          ORA #$01
          STA $03CA
L55C4:    JMP L561D
L55C7:    LDA $03CA
          AND #$FD
          STA $03CA
          LDY #$0B
          LDA ($04),Y
          INY
          ORA ($04),Y
          BEQ L55E0
          LDA $03CA
          ORA #$02
          STA $03CA
L55E0:    JMP L561D
L55E3:    LDA $03CA
          AND #$FB
          STA $03CA
          LDY #$0B
          LDA ($04),Y
          INY
          ORA ($04),Y
          BEQ L55FC
          LDA $03CA
          ORA #$04
          STA $03CA
L55FC:    JMP L561D
L55FF:    LDA #$FF
          STA $08
          STA $09
          RTS
L5606:    JSR L5B0E
          byt $04, $00, $00, $00
          adr L55A8
          adr $0001
          adr L55AB
          adr $0002
          adr L55C7
          adr $000A
          adr L55E3
          adr L55FF
L561D:    STX $08
          STX $09
          RTS
L5622:    JSR L5A6F
          byt $08, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          LDA #$01
          STA $84
          STX $85
          STX $82
          STX $83
          LDA ($80,X)
          CMP #$2D
          BNE L564F
          INC $80
          BNE L5649
          INC $81
L5649:    LDA #$FF
          STA $84
          STA $85
L564F:    CLC
          LDA $80
          STA $1C
          ADC #$01
          STA $80
          LDA $81
          STA $1D
          ADC #$00
          STA $81
          LDA ($1C,X)
          STA $86
          TXA
          STA $87
          LDA $86
          CMP #$30
          LDA $87
          SBC #$00
          BCC L567A
          LDA #$39
          CMP $86
          TXA
          SBC $87
          BCS L568D
L567A:    LDA $84
          STA $08
          LDA $85
          STA $09
          LDA $83
          TAX
          LDA $82
          LDY #$08
          JSR L58DC
          RTS
L568D:    LDA $82
          STA $1C
          LDA $83
          STA $1D
          LDA #$0A
          LDY #$1C
          JSR L58DC
          CLC
          LDA $1C
          ADC $86
          STA $18
          LDA $1D
          ADC $87
          STA $19
          CLC
          LDA $18
          ADC #$D0
          STA $82
          LDA $19
          ADC #$FF
          STA $83
          JMP L564F
L56B9:    byt "`"
L56BA:    LDY #$00
          LDA ($02),Y
          STA $08
          INY
          LDA ($02),Y
          STA $09
          INY
          CLC
          LDA ($02),Y
          ADC $08
          STA $0C
          INY
          LDA ($02),Y
          ADC $09
          STA $0D
          INY
          LDA ($02),Y
          STA $00
          LDY #$00
L56DB:    LDA $00
          STA ($08),Y
          INC $08
          BNE L56E5
          INC $09
L56E5:    LDA $08
          CMP $0C
          LDA $09
          SBC $0D
          BCC L56DB
          RTS
L56F0:    LDY #$00
          STY $09
          LDA ($02),Y
          STA $0C
          INY
          LDA ($02),Y
          STA $0D
          DEY
L56FE:    LDA ($0C),Y
          BEQ L570B
          INY
          BNE L56FE
          INC $0D
          INC $09
          BNE L56FE
L570B:    STY $08
          RTS
L570E:    JSR L5A6F
          byt $06, $00, $00
          LDY #$09
          LDA ($04),Y
          STA $80
          INY
          LDA ($04),Y
          STA $81
          CLC
          LDA $80
          ADC #$02
          STA $80
          LDA $81
          ADC #$00
          STA $81
          LDA $80
          CMP #$04
          LDA $81
          SBC #$00
          BCC L5739
          JMP L573F
L5739:    LDA #$04
          STA $80
          STX $81
L573F:    STX $84
          STX $85
          LDA L5FF8
          STA $82
          LDA L5FF9
          STA $83
          JMP L576B
L5750:    LDA $82
          STA $84
          LDA $83
          STA $85
          LDY #$02
          LDA ($82),Y
          STA $1C
          INY
          LDA ($82),Y
          STA $1D
          LDA $1C
          STA $82
          LDA $1D
          STA $83
L576B:    LDA $82
          ORA $83
          BNE L5774
          JMP L580F
L5774:    LDA ($82,X)
          CMP $80
          LDY #$01
          LDA ($82),Y
          SBC $81
          BCS L5783
          JMP L580C
L5783:    CLC
          LDA $80
          ADC #$03
          STA $1C
          LDA $81
          ADC #$00
          STA $1D
          LDA $1C
          CMP ($82,X)
          LDA $1D
          SBC ($82),Y
          BCC L579D
          JMP L57DA
L579D:    CLC
          LDA ($82,X)
          ADC $82
          STA $1C
          LDA ($82),Y
          ADC $83
          STA $1D
          SEC
          LDA $1C
          SBC $80
          STA $84
          LDA $1D
          SBC $81
          STA $85
          LDA $80
          STA ($84,X)
          LDA $81
          STA ($84),Y
          SEC
          LDA ($82,X)
          SBC $80
          STA ($82,X)
          LDA ($82),Y
          SBC $81
          STA ($82),Y
          CLC
          LDA $84
          ADC #$02
          STA $08
          LDA $85
          ADC #$00
          STA $09
          RTS
L57DA:    LDA $84
          ORA $85
          BNE L57E3
          JMP L57F1
L57E3:    LDY #$02
          LDA ($82),Y
          STA ($84),Y
          INY
          LDA ($82),Y
          STA ($84),Y
          JMP L57FE
L57F1:    LDY #$02
          LDA ($82),Y
          STA L5FF8
          INY
          LDA ($82),Y
          STA L5FF9
L57FE:    CLC
          LDA $82
          ADC #$02
          STA $08
          LDA $83
          ADC #$00
          STA $09
          RTS
L580C:    JMP L5750
L580F:    CLC
          LDA L5FF6
          ADC $80
          STA $1C
          LDA L5FF7
          ADC $81
          STA $1D
          CLC
          LDA $02
          ADC #$00
          STA $18
          LDA $03
          ADC #$FF
          STA $19
          LDA $18
          CMP $1C
          LDA $19
          SBC $1D
          BCC L5838
          JMP L583D
L5838:    STX $08
          STX $09
          RTS
L583D:    LDA L5FF6
          STA $82
          LDA L5FF7
          STA $83
          CLC
          LDA L5FF6
          ADC $80
          STA L5FF6
          LDA L5FF7
          ADC $81
          STA L5FF7
          LDA $80
          STA ($82,X)
          LDA $81
          LDY #$01
          STA ($82),Y
          CLC
          LDA $82
          ADC #$02
          STA $08
          LDA $83
          ADC #$00
          STA $09
          RTS
L5870:    LDY #$03
L5872:    LDA ($02),Y
          STA $0008,Y
          DEY
          BPL L5872
          INY
L587B:    LDA ($08),Y
          BEQ L588A
          CMP $0A
          BEQ L5891
          INY
          BNE L587B
          INC $09
          BNE L587B
L588A:    LDA #$00
          STA $08
          STA $09
          RTS
L5891:    CLC
          TYA
          ADC $08
          STA $08
          BCC L589B
          INC $09
L589B:    RTS
L589C:    PLA
          STA $00
          PLA
          STA $01
          LDY #$01
          CLC
          LDA ($00),Y
          ADC $08
          STA $08
          INY
          LDA ($00),Y
          ADC $09
          STA $09
          INY
          LDA $08
          CMP ($00),Y
          INY
          LDA $09
          SBC ($00),Y
          INY
          BCS L58D0
          LDA $08
          ASL
          ROL $09
          ADC $00
          STA $00
          LDA $09
          ADC $01
          STA $01
          LDY #$07
L58D0:    LDA ($00),Y
          STA $08
          INY
          LDA ($00),Y
          STA $09
          JMP ($0008)
L58DC:    STA $40
          STX $41
          TYA
          TAX
          LDY #$00
          STY $00
          STY $01
          LDY #$10
L58EA:    LDA $00,X
          LSR
          BCC L58FC
          CLC
          LDA $00
          ADC $40
          STA $00
          LDA $01
          ADC $41
          STA $01
L58FC:    ROR $01
          ROR $00
          ROR $01,X
          ROR $00,X
          DEY
          BNE L58EA
          LDY #$01
          LDX #$00
          TXA
          RTS
L590D:    JSR L597D
          LDA $42
          BPL L591F
          SEC
          TYA
          SBC $00,X
          STA $00,X
          TYA
          SBC $01,X
          STA $01,X
L591F:    TYA
          TAX
          INY
          RTS
L5923:    JSR L594F
          TYA
          TAX
          INY
          RTS
L592A:    JSR L597D
          LDA $43
          BPL L5943
          SEC
          TYA
          SBC $00
          STA $00,X
          TYA
          SBC $01
          STA $01,X
          TYA
          TAX
          INY
          RTS
L5940:    JSR L594F
L5943:    LDA $00
          STA $00,X
          LDA $01
          STA $01,X
          TYA
          TAX
          INY
          RTS
L594F:    STA $40
          STX $41
          TYA
          TAX
          LDY #$00
L5957:    STY $00
          STY $01
          LDY #$10
L595D:    ASL $00,X
          ROL $01,X
          ROL $00
          ROL $01
          LDA $00
          CMP $40
          LDA $01
          SBC $41
          BCC L5979
          STA $01
          LDA $00
          SBC $40
          STA $00
          INC $00,X
L5979:    DEY
          BNE L595D
          RTS
L597D:    STA $40
          STX $41
          TYA
          TAX
          LDY #$00
          LDA $01,X
          STA $43
          EOR $41
          STA $42
          LDA $41
          BPL L599C
          TYA
          SEC
          SBC $40
          STA $40
          TYA
          SBC $41
          STA $41
L599C:    LDA $01,X
          BPL L59AB
          SEC
          TYA
          SBC $00,X
          STA $00,X
          TYA
          SBC $01,X
          STA $01,X
L59AB:    JMP L5957
L59AE:    STX $00
          STA $01
          TYA
          TAX
          LDY $01
          BNE L59C2
L59B8:    DEC $00
          BPL L59C2
          LDY #$01
          LDX #$00
          TXA
          RTS
L59C2:    ASL $00,X
          ROL $01,X
          DEY
          BEQ L59B8
          BNE L59C2
L59CB:    STA $01
          STX $00
          TYA
          TAX
          LDA $01,X
          BPL L59F3
          LDY $01
          BNE L59E3
L59D9:    DEC $00
          BPL L59E3
          LDY #$01
          LDX #$00
          TXA
          RTS
L59E3:    SEC
          ROR $01,X
          ROR $00,X
          DEY
          BEQ L59D9
          BNE L59E3
L59ED:    STX $00
          STA $01
          TYA
          TAX
L59F3:    LDY $01
          BNE L5A01
L59F7:    DEC $00
          BPL L5A01
          LDY #$01
          LDX #$00
          TXA
          RTS
L5A01:    LSR $01,X
          ROR $00,X
          DEY
          BEQ L59F7
          BNE L5A01
L5A0A:    PLA
          STA $00
          PLA
          STA $01
          SEC
          LDY #$06
          LDA $02
          SBC ($00),Y
          STA $02
          BCS L5A1D
          DEC $03
L5A1D:    LDA ($00),Y
          TAX
          LDY #$00
L5A22:    PLA
          STA ($02),Y
          INY
          DEX
          BNE L5A22
          LDY #$01
          LDA ($00),Y
          STA $08
          INY
          LDA ($00),Y
          STA $09
          CLC
          LDA $00
          ADC #$02
          TAY
          LDA $01
          ADC #$00
          PHA
          TYA
          PHA
          LDA #$00
          TAX
          LDY #$01
          JMP ($0008)
L5A49:    PLA
          STA $00
          PLA
          STA $01
          CLC
          LDY #$01
          LDA $02
          ADC ($00),Y
          STA $02
          BCC L5A5C
          INC $03
L5A5C:    CLC
          LDA $00
          ADC #$02
          STA $00
          BCC L5A67
          INC $01
L5A67:    LDA #$00
          TAX
          LDY #$01
          JMP ($0000)
L5A6F:    PLA
          STA $08
          PLA
          STA $09
          CLC
          PLA
          ADC #$01
          STA $00
          PLA
          ADC #$00
          STA $01
          LDY #$07
          SEC
          LDA $02
          SBC #$09
          STA $0C
          LDA $03
          SBC #$00
          STA $0D
L5A8F:    LDA $0000,Y
          STA ($0C),Y
          DEY
          BPL L5A8F
          LDY #$01
          SEC
          LDA $0C
          STA $04
          SBC ($08),Y
          STA $06
          LDA $0D
          STA $05
          SBC #$00
          STA $07
          LDA ($08),Y
          LDY #$08
          STA ($04),Y
          TAY
          BEQ L5ABC
          DEY
L5AB4:    LDA $0080,Y
          STA ($06),Y
          DEY
          BPL L5AB4
L5ABC:    LDY #$02
          CLC
          LDA $06
          ADC ($08),Y
          STA $02
          INY
          LDA $07
          ADC ($08),Y
          STA $03
          DEC $07
          CLC
          LDA $08
          ADC #$04
          STA $08
          BCC L5AD9
          INC $09
L5AD9:    LDA #$5A
          PHA
          LDA #$E6
          PHA
          LDA #$00
          TAX
          LDY #$01
          JMP ($0008)
L5AE7:    INC $07
          LDY #$08
          LDA ($04),Y
          TAY
          BEQ L5AF9
          DEY
L5AF1:    LDA ($06),Y
          STA $0080,Y
          DEY
          BPL L5AF1
L5AF9:    LDA $04
          STA $0C
          LDA $05
          STA $0D
          LDY #$07
L5B03:    LDA ($0C),Y
          STA $0000,Y
          DEY
          BPL L5B03
          JMP ($0000)
L5B0E:    PLA
          STA $00
          PLA
          STA $01
          LDY #$01
          LDA ($00),Y
          TAX
          INY
          LDA ($00),Y
          STA $18
          CLC
          LDA $00
          ADC #$03
          STA $00
          BCC L5B29
          INC $01
L5B29:    LDY #$00
          TXA
          BNE L5B35
          DEC $18
          BPL L5B35
          DEY
          BNE L5B50
L5B35:    DEX
          LDA ($00),Y
          CMP $08
          BNE L5B43
          INY
          LDA ($00),Y
          CMP $09
          BEQ L5B50
L5B43:    CLC
          LDA $00
          ADC #$04
          STA $00
          BCC L5B29
          INC $01
          BCS L5B29
L5B50:    INY
          LDA ($00),Y
          STA $08
          INY
          LDA ($00),Y
          STA $09
          LDX #$00
          JMP ($0008)
L5B5F:    STY $00
          STX $01
L5B63:    CLC
          LDY #$04
          LDX $01
L5B68:    LDA #$FF
          ADC $00,X
          STA $00,X
          INX
          DEY
          BNE L5B68
          TAX
          BPL L5B79
          TYA
          TAX
          INY
          RTS
L5B79:    LDX $00
          ASL $00,X
          ROL $01,X
          ROL $02,X
          ROL $03,X
          JMP L5B63
L5B86:    STY $00
          STX $01
          CLC
          LDA $0003,Y
          BPL L5B91
          SEC
L5B91:    PHP
L5B92:    CLC
          LDY #$04
          LDX $01
L5B97:    LDA #$FF
          ADC $00,X
          STA $00,X
          INX
          DEY
          BNE L5B97
          TAX
          BPL L5BA9
          PLP
          TYA
          TAX
          INY
          RTS
L5BA9:    PLP
          PHP
          LDX $00
          ROR $03,X
          ROR $02,X
          ROR $01,X
          ROR $00,X
          JMP L5B92
L5BB8:    LDY #$01
          SEC
          LDA $02
          SBC #$02
L5BBF:    STA $02
          BCS L5BC5
          DEC $03
L5BC5:    LDA $00,X
          STA ($02),Y
          INX
          DEY
          BPL L5BC5
          LDY #$01
          LDX #$00
          TXA
          RTS
L5BD3:    LDY #$03
          SEC
          LDA $02
          SBC #$04
          JMP L5BBF
L5BDD:    LDY #$01
L5BDF:    LDA ($02),Y
          STA $00,X
          INX
          DEY
          BPL L5BDF
          CLC
          LDA $02
          ADC #$02
          STA $02
          BCC L5BF2
          INC $03
L5BF2:    LDY #$01
          LDX #$00
          TXA
          RTS
L5BF8:    LDY #$03
L5BFA:    LDA ($02),Y
          STA $00,X
          INX
          DEY
          BPL L5BFA
          CLC
          LDA $02
          ADC #$04
          STA $02
          BCC L5C0D
          INC $03
L5C0D:    LDY #$01
          LDX #$00
          TXA
L5C12:    RTS
L5C13:    byt $00
L5C14:    byt $00
L5C15:    byt $00
L5C16:    byt $00
L5C17:    byt $00
L5C18:    byt $00
L5C19:    byt $00
L5C1A:    byt $00
L5C1B:    JSR L5D51
          PHA
          STX $40
          STX $41
          STX $42
          STX $43
          LDY #$20
L5C29:    LDA L5C17
          LSR
          BCC L5C42
          CLC
          LDA #$04
          STA $00
          LDX #$00
L5C36:    LDA $40,X
          ADC L5C13,X
          STA $40,X
          INX
          DEC $00
          BNE L5C36
L5C42:    LSR $43
          ROR $42
          ROR $41
          ROR $40
          ROR L5C1A
          ROR L5C19
          ROR L5C18
          ROR L5C17
          DEY
          BNE L5C29
          PLA
          TAX
          LDY #$04
L5C5D:    LDA L5C16,Y
          STA $03,X
          DEX
          DEY
          BNE L5C5D
          TYA
          TAX
          INY
          RTS
L5C6A:    JSR L5CC8
          TAX
          LDY #$00
          LDA #$04
          STA $00
          LDA $00,X
          BPL L5C88
          SEC
L5C79:    LDA #$00
          SBC L5C17,Y
          STA $00,X
          INX
          INY
          DEC $00
          BNE L5C79
          BEQ L5C93
L5C88:    LDA L5C17,Y
          STA $00,X
          INX
          INY
          DEC $00
          BNE L5C88
L5C93:    LDX #$00
          TXA
          LDY #$01
          RTS
L5C99:    JSR L5CC8
          TAX
          LDA #$04
          STA $00
          LDY #$00
          LDA $01,X
          BPL L5CB7
          SEC
L5CA8:    LDA #$00
          SBC $0040,Y
          STA $00,X
          INX
          INY
          DEC $00
          BNE L5CA8
          BEQ L5CC2
L5CB7:    LDA $0040,Y
          STA $00,X
          INX
          INY
          CPY #$04
          BNE L5CB7
L5CC2:    LDA #$00
          TAX
          LDY #$01
          RTS
L5CC8:    JSR L5D51
          PHA
          STX $40
          STX $41
          STX $42
          STX $43
          TAX
          LDA L5C1A
          STA $01,X
          EOR L5C16
          STA $00,X
          LDA L5C16
          BPL L5CF5
          SEC
          LDY #$04
          LDX #$00
L5CE9:    LDA #$00
          SBC L5C13,X
          STA L5C13,X
          INX
          DEY
          BNE L5CE9
L5CF5:    LDA L5C1A
          BPL L5D0B
          SEC
          LDY #$04
          LDX #$00
L5CFF:    LDA #$00
          SBC L5C17,X
          STA L5C17,X
          INX
          DEY
          BNE L5CFF
L5D0B:    LDY #$20
L5D0D:    ASL L5C17
          ROL L5C18
          ROL L5C19
          ROL L5C1A
          ROL $40
          ROL $41
          ROL $42
          ROL $43
          SEC
          LDA $40
          SBC L5C13
          STA $00
          LDA $41
          SBC L5C14
          STA $01
          LDA $42
          SBC L5C15
          TAX
          LDA $43
          SBC L5C16
          BCC L5D4C
          STA $43
          STX $42
          LDA $01
          STA $41
          LDA $00
          STA $40
          INC L5C17
L5D4C:    DEY
          BNE L5D0D
          PLA
          RTS
L5D51:    TYA
          PHA
          LDY #$04
L5D55:    LDA $03,X
          STA L5C12,Y
          DEX
          DEY
          BNE L5D55
          PLA
          PHA
          TAX
          LDY #$04
L5D63:    LDA $03,X
          STA L5C16,Y
          DEX
          DEY
          BNE L5D63
          LDX #$00
          PLA
          RTS
L5D70:    PLA
          STA $00
          PLA
          STA $01
          SEC
          LDY #$04
          LDA $02
          SBC ($00),Y
          STA $02
          BCS L5D83
          DEC $03
L5D83:    LDA ($00),Y
          TAX
          LDY #$00
L5D88:    PLA
          STA ($02),Y
          INY
          DEX
          BNE L5D88
          LDA $01
          PHA
          LDA $00
          PHA
          JMP ($0008)
L5D98:    byt $00, $00, $00, $00, $00, $00, $00
L5D9F:    byt $00
L5DA0:    byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00
L5DC7:    byt $00
L5DC8:    byt $00
L5DC9:    byt $00
L5DCA:    byt $00
L5DCB:    byt $00
L5DCC:    byt $00
L5DCD:    byt $00
L5DCE:    byt $00
L5DCF:    byt "          CAUZIN SYSTEMS INC."
          byt $0D
          byt "   DATA STRIP PRINTING PROGRAM  V1.1A"
          byt $0D
          byt "        FOR EPSON FX-80 PRINTERS"
          byt $0D, $0D, $0D, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
L5E47:    byt $00
L5E48:    byt "         "
          byt $00
L5E52:    byt $00
L5E53:    byt $00
L5E54:    byt $00
L5E55:    byt $00
L5E56:    byt $00
          byt "&"
          byt $07
          byt "&"
          byt $0E
          byt "&"
          byt $00, $00, $00, $00, $01, $02, $03, $04, $00, $05
          byt $05, $05, $05, $05, $05, $05, $05, $05, $05, $00
          byt $06, $00, $00, $00, $FE
          byt "+"
          byt $FF
          byt "+%,K,q,"
          byt $97
          byt ","
          byt $BD
          byt ","
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
L5EAA:    byt $00
L5EAB:    byt $00
L5EAC:    byt $00
L5EAD:    byt $00
L5EAE:    byt $00
L5EAF:    byt $00
L5EB0:    byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00, $00, $00, $FF, $FF
          byt $FF, $FF, $FF, $FF, $FF
L5ED3:    byt $00
L5ED4:    byt $00
L5ED5:    byt "V"
          byt $96
          byt "f"
          byt $A6
L5ED9:    byt "."
L5EDA:    byt $04
L5EDB:    byt $03
L5EDC:    byt $00
L5EDD:    byt $0F, $0F, $0F, $FF, $FF, $FF, $FF, $FF, $FF, $FF
          byt $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
          byt $FF, $F0, $F0, $F0
L5EF5:    byt $08
L5EF6:    byt $00
L5EF7:    byt "12qr"
          byt $E6
          byt "g"
          byt $00, $00, $80, $F9, $19
L5F02:    byt $0F
L5F03:    byt $00
L5F04:    byt $1D
L5F05:    byt $00
L5F06:    byt $1F
L5F07:    byt $00
L5F08:    byt $02
L5F09:    byt $00
L5F0A:    byt $00, $00, $00, $01, $01, $01, $01, $03, $03, $03
          byt $03, $03, $03, $03, $03, $07, $03, $03, $03, $03
          byt $03, $03, $03, $03, $01, $01, $01, $01, $00, $00
          byt $00, $01, $03, $07, $07, $0F, $0F, $0F, $0F, $0F
          byt $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F
          byt $1F, $1F, $1F, $0F, $0F, $0F, $0F, $0F, $07, $07
          byt $03, $01, $00, $1C, $1E
          byt "??"
          byt $7F, $7F, $7F, $7F, $7F, $7F, $FF, $FF, $FF, $FF
          byt $FF, $FF, $FF, $FF, $FF, $7F, $7F, $7F, $7F, $7F
          byt $7F
          byt "??"
          byt $1E, $1C, $00, $00
          byt "p"
          byt $F0, $F8, $F8, $FC, $FC, $FC, $FC, $FC, $FC, $FE
          byt $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FC, $FC
          byt $FC, $FC, $FC, $FC, $F8, $F8, $F0
          byt "p"
          byt $00, $00, $80, $C0, $C0, $E0, $E0, $E0, $E0, $E0
          byt $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
          byt $F0, $F0, $F0, $E0, $E0, $E0, $E0, $E0, $C0, $C0
          byt $80, $00, $00, $00, $00, $00, $00, $00, $00, $80
          byt $80, $80, $80, $80, $80, $80, $80, $C0, $80, $80
          byt $80, $80, $80, $80, $80, $80, $00, $00, $00, $00
          byt $00, $00, $00
L5FC4:    byt $06
L5FC5:    byt $00
L5FC6:    byt "J"
L5FC7:    byt $00
L5FC8:    byt $80
L5FC9:    byt $00
L5FCA:    byt "="
L5FCB:    byt $00
L5FCC:    byt $03
L5FCD:    byt $00
L5FCE:    byt "UVYZefij"
          byt $95, $96, $99, $9A, $A5, $A6, $A9, $AA
L5FDE:    byt $03
L5FDF:    byt $00
L5FE0:    byt $07
L5FE1:    byt $00
L5FE2:    byt $08
L5FE3:    byt $00
L5FE4:    byt $CF
L5FE5:    byt "]"
L5FE6:    byt $05
L5FE7:    byt $00
L5FE8:    byt $08
L5FE9:    byt $00
L5FEA:    byt $F8
L5FEB:    byt $07
L5FEC:    byt ","
L5FED:    byt $01
L5FEE:    byt $C0
L5FEF:    byt $00
L5FF0:    byt $99
L5FF1:    byt $00
L5FF2:    byt $A8
L5FF3:    byt $00
L5FF4:    byt $00
L5FF5:    byt $00
L5FF6:    byt $00
L5FF7:    byt $00
L5FF8:    byt $00
L5FF9:    byt $00
L5FFA:    byt $00
L5FFB:    byt $00
L5FFC:    byt $00
L5FFD:    byt $00
L5FFE:    byt $00
L5FFF:    byt $00
L6000:    byt $00
L6001:    byt $00
L6002:    byt $00
L6003:    byt $00
L6004:    byt $00
L6005:    byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $0A
          byt $07
          byt "OUT OF SPACE"
          byt $07, $0A, $00
L6033:    byt $00
L6034:    byt $00
L6035:    byt $00
L6036:    byt $00
L6037:    byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
          byt $00, $00, $00
          byt "*4"
          byt $DD
          byt "4@4"
          byt $EA
          byt "4]4"
          byt $F7
          byt "4"
          byt $00, $00, $00, $00
L6068:    byt $00
L6069:    byt $00
L606A:    byt $00
L606B:    byt $00
L606C:    byt $00
L606D:    byt $00
L606E:    byt $00
L606F:    byt $00
L6070:    byt $05, $04
          byt "3"
          byt $03, $94, $94
          byt "@I"
          byt $09, $04, $04, $0A, $04
          byt "wwpw"
          byt $07, $06, $03, $A9, $02, $B2, $B2
          byt " +"
          byt $0B, $00