module font_rom (
    input wire [7:0] char,
    input wire [3:0] row,
    output reg [7:0] pixels
);

    always @(*) begin
        case ({char, row})
		              // Символ '0'
            12'h000: pixels = 8'b00111100;
            12'h001: pixels = 8'b01000010;
            12'h002: pixels = 8'b01000010;
            12'h003: pixels = 8'b01000010;
            12'h004: pixels = 8'b01000010;
            12'h005: pixels = 8'b01000010;
            12'h006: pixels = 8'b01000010;
            12'h007: pixels = 8'b00111100;
            12'h008: pixels = 8'b00000000;
            12'h009: pixels = 8'b00000000;
            12'h00A: pixels = 8'b00000000;
            12'h00B: pixels = 8'b00000000;
            12'h00C: pixels = 8'b00000000;
            12'h00D: pixels = 8'b00000000;
            12'h00E: pixels = 8'b00000000;
            12'h00F: pixels = 8'b00000000;

            // Символ '1'
            12'h010: pixels = 8'b00001000;
            12'h011: pixels = 8'b00011000;
            12'h012: pixels = 8'b00101000;
            12'h013: pixels = 8'b00001000;
            12'h014: pixels = 8'b00001000;
            12'h015: pixels = 8'b00001000;
            12'h016: pixels = 8'b00001000;
            12'h017: pixels = 8'b00111110;
            12'h018: pixels = 8'b00000000;
            12'h019: pixels = 8'b00000000;
            12'h01A: pixels = 8'b00000000;
            12'h01B: pixels = 8'b00000000;
            12'h01C: pixels = 8'b00000000;
            12'h01D: pixels = 8'b00000000;
            12'h01E: pixels = 8'b00000000;
            12'h01F: pixels = 8'b00000000;

            // Символ '2'
            12'h020: pixels = 8'b00111100;
            12'h021: pixels = 8'b01000010;
            12'h022: pixels = 8'b00000010;
            12'h023: pixels = 8'b00000100;
            12'h024: pixels = 8'b00001000;
            12'h025: pixels = 8'b00010000;
            12'h026: pixels = 8'b00100000;
            12'h027: pixels = 8'b01111110;
            12'h028: pixels = 8'b00000000;
            12'h029: pixels = 8'b00000000;
            12'h02A: pixels = 8'b00000000;
            12'h02B: pixels = 8'b00000000;
            12'h02C: pixels = 8'b00000000;
            12'h02D: pixels = 8'b00000000;
            12'h02E: pixels = 8'b00000000;
            12'h02F: pixels = 8'b00000000;

            // Символ '3'
            12'h030: pixels = 8'b00111100;
            12'h031: pixels = 8'b01000010;
            12'h032: pixels = 8'b00000010;
            12'h033: pixels = 8'b00011100;
            12'h034: pixels = 8'b00000010;
            12'h035: pixels = 8'b00000010;
            12'h036: pixels = 8'b01000010;
            12'h037: pixels = 8'b00111100;
            12'h038: pixels = 8'b00000000;
            12'h039: pixels = 8'b00000000;
            12'h03A: pixels = 8'b00000000;
            12'h03B: pixels = 8'b00000000;
            12'h03C: pixels = 8'b00000000;
            12'h03D: pixels = 8'b00000000;
            12'h03E: pixels = 8'b00000000;
            12'h03F: pixels = 8'b00000000;

            // Символ '4'
            12'h040: pixels = 8'b00000100;
            12'h041: pixels = 8'b00001100;
            12'h042: pixels = 8'b00010100;
            12'h043: pixels = 8'b00100100;
            12'h044: pixels = 8'b01000100;
            12'h045: pixels = 8'b01111110;
            12'h046: pixels = 8'b00000100;
            12'h047: pixels = 8'b00000100;
            12'h048: pixels = 8'b00000000;
            12'h049: pixels = 8'b00000000;
            12'h04A: pixels = 8'b00000000;
            12'h04B: pixels = 8'b00000000;
            12'h04C: pixels = 8'b00000000;
            12'h04D: pixels = 8'b00000000;
            12'h04E: pixels = 8'b00000000;
            12'h04F: pixels = 8'b00000000;

            // Символ '5'
            12'h050: pixels = 8'b01111110;
            12'h051: pixels = 8'b01000000;
            12'h052: pixels = 8'b01111100;
            12'h053: pixels = 8'b00000010;
            12'h054: pixels = 8'b00000010;
            12'h055: pixels = 8'b00000010;
            12'h056: pixels = 8'b01000010;
            12'h057: pixels = 8'b00111100;
            12'h058: pixels = 8'b00000000;
            12'h059: pixels = 8'b00000000;
            12'h05A: pixels = 8'b00000000;
            12'h05B: pixels = 8'b00000000;
            12'h05C: pixels = 8'b00000000;
            12'h05D: pixels = 8'b00000000;
            12'h05E: pixels = 8'b00000000;
            12'h05F: pixels = 8'b00000000;

            // Символ '6'
            12'h060: pixels = 8'b00111100;
            12'h061: pixels = 8'b01000010;
            12'h062: pixels = 8'b01000000;
            12'h063: pixels = 8'b01111100;
            12'h064: pixels = 8'b01000010;
            12'h065: pixels = 8'b01000010;
            12'h066: pixels = 8'b01000010;
            12'h067: pixels = 8'b00111100;
            12'h068: pixels = 8'b00000000;
            12'h069: pixels = 8'b00000000;
            12'h06A: pixels = 8'b00000000;
            12'h06B: pixels = 8'b00000000;
            12'h06C: pixels = 8'b00000000;
            12'h06D: pixels = 8'b00000000;
            12'h06E: pixels = 8'b00000000;
            12'h06F: pixels = 8'b00000000;

            // Символ '7'
            12'h070: pixels = 8'b01111110;
            12'h071: pixels = 8'b00000010;
            12'h072: pixels = 8'b00000100;
            12'h073: pixels = 8'b00001000;
            12'h074: pixels = 8'b00010000;
            12'h075: pixels = 8'b00100000;
            12'h076: pixels = 8'b01000000;
            12'h077: pixels = 8'b01000000;
            12'h078: pixels = 8'b00000000;
            12'h079: pixels = 8'b00000000;
            12'h07A: pixels = 8'b00000000;
            12'h07B: pixels = 8'b00000000;
            12'h07C: pixels = 8'b00000000;
            12'h07D: pixels = 8'b00000000;
            12'h07E: pixels = 8'b00000000;
            12'h07F: pixels = 8'b00000000;

            // Символ '8'
            12'h080: pixels = 8'b00111100;
            12'h081: pixels = 8'b01000010;
            12'h082: pixels = 8'b01000010;
            12'h083: pixels = 8'b00111100;
            12'h084: pixels = 8'b01000010;
            12'h085: pixels = 8'b01000010;
            12'h086: pixels = 8'b01000010;
            12'h087: pixels = 8'b00111100;
            12'h088: pixels = 8'b00000000;
            12'h089: pixels = 8'b00000000;
            12'h08A: pixels = 8'b00000000;
            12'h08B: pixels = 8'b00000000;
            12'h08C: pixels = 8'b00000000;
            12'h08D: pixels = 8'b00000000;
            12'h08E: pixels = 8'b00000000;
            12'h08F: pixels = 8'b00000000;

            // Символ '9'
            12'h090: pixels = 8'b00111100;
            12'h091: pixels = 8'b01000010;
            12'h092: pixels = 8'b01000010;
            12'h093: pixels = 8'b00111110;
            12'h094: pixels = 8'b00000010;
            12'h095: pixels = 8'b00000010;
            12'h096: pixels = 8'b01000010;
            12'h097: pixels = 8'b00111100;
            12'h098: pixels = 8'b00000000;
            12'h099: pixels = 8'b00000000;
            12'h09A: pixels = 8'b00000000;
            12'h09B: pixels = 8'b00000000;
            12'h09C: pixels = 8'b00000000;
            12'h09D: pixels = 8'b00000000;
            12'h09E: pixels = 8'b00000000;
            12'h09F: pixels = 8'b00000000;

            // Символ 'A'
            12'h0A0: pixels = 8'b00111100;
            12'h0A1: pixels = 8'b01000010;
            12'h0A2: pixels = 8'b01000010;
            12'h0A3: pixels = 8'b01000010;
            12'h0A4: pixels = 8'b01111110;
            12'h0A5: pixels = 8'b01000010;
            12'h0A6: pixels = 8'b01000010;
            12'h0A7: pixels = 8'b01000010;
            12'h0A8: pixels = 8'b00000000;
            12'h0A9: pixels = 8'b00000000;
            12'h0AA: pixels = 8'b00000000;
            12'h0AB: pixels = 8'b00000000;
            12'h0AC: pixels = 8'b00000000;
            12'h0AD: pixels = 8'b00000000;
            12'h0AE: pixels = 8'b00000000;
            12'h0AF: pixels = 8'b00000000;

            // Символ 'B'
            12'h0B0: pixels = 8'b01111100;
            12'h0B1: pixels = 8'b01000010;
            12'h0B2: pixels = 8'b01000010;
            12'h0B3: pixels = 8'b01111100;
            12'h0B4: pixels = 8'b01000010;
            12'h0B5: pixels = 8'b01000010;
            12'h0B6: pixels = 8'b01000010;
            12'h0B7: pixels = 8'b01111100;
            12'h0B8: pixels = 8'b00000000;
            12'h0B9: pixels = 8'b00000000;
            12'h0BA: pixels = 8'b00000000;
            12'h0BB: pixels = 8'b00000000;
            12'h0BC: pixels = 8'b00000000;
            12'h0BD: pixels = 8'b00000000;
            12'h0BE: pixels = 8'b00000000;
            12'h0BF: pixels = 8'b00000000;

            // Символ 'C'
            12'h0C0: pixels = 8'b00111100;
            12'h0C1: pixels = 8'b01000010;
            12'h0C2: pixels = 8'b01000000;
            12'h0C3: pixels = 8'b01000000;
            12'h0C4: pixels = 8'b01000000;
            12'h0C5: pixels = 8'b01000000;
            12'h0C6: pixels = 8'b01000010;
            12'h0C7: pixels = 8'b00111100;
            12'h0C8: pixels = 8'b00000000;
            12'h0C9: pixels = 8'b00000000;
            12'h0CA: pixels = 8'b00000000;
            12'h0CB: pixels = 8'b00000000;
            12'h0CC: pixels = 8'b00000000;
            12'h0CD: pixels = 8'b00000000;
            12'h0CE: pixels = 8'b00000000;
            12'h0CF: pixels = 8'b00000000;

            // Символ 'D'
            12'h0D0: pixels = 8'b01111000;
            12'h0D1: pixels = 8'b01000100;
            12'h0D2: pixels = 8'b01000010;
            12'h0D3: pixels = 8'b01000010;
            12'h0D4: pixels = 8'b01000010;
            12'h0D5: pixels = 8'b01000010;
            12'h0D6: pixels = 8'b01000100;
            12'h0D7: pixels = 8'b01111000;
            12'h0D8: pixels = 8'b00000000;
            12'h0D9: pixels = 8'b00000000;
            12'h0DA: pixels = 8'b00000000;
            12'h0DB: pixels = 8'b00000000;
            12'h0DC: pixels = 8'b00000000;
            12'h0DD: pixels = 8'b00000000;
            12'h0DE: pixels = 8'b00000000;
            12'h0DF: pixels = 8'b00000000;

            // Символ 'E'
            12'h0E0: pixels = 8'b01111110;
            12'h0E1: pixels = 8'b01000000;
            12'h0E2: pixels = 8'b01000000;
            12'h0E3: pixels = 8'b01111100;
            12'h0E4: pixels = 8'b01000000;
            12'h0E5: pixels = 8'b01000000;
            12'h0E6: pixels = 8'b01000000;
            12'h0E7: pixels = 8'b01111110;
            12'h0E8: pixels = 8'b00000000;
            12'h0E9: pixels = 8'b00000000;
            12'h0EA: pixels = 8'b00000000;
            12'h0EB: pixels = 8'b00000000;
            12'h0EC: pixels = 8'b00000000;
            12'h0ED: pixels = 8'b00000000;
            12'h0EE: pixels = 8'b00000000;
            12'h0EF: pixels = 8'b00000000;

            // Символ 'F'
            12'h0F0: pixels = 8'b01111110;
            12'h0F1: pixels = 8'b01000000;
            12'h0F2: pixels = 8'b01000000;
            12'h0F3: pixels = 8'b01111100;
            12'h0F4: pixels = 8'b01000000;
            12'h0F5: pixels = 8'b01000000;
            12'h0F6: pixels = 8'b01000000;
            12'h0F7: pixels = 8'b01000000;
            12'h0F8: pixels = 8'b00000000;
            12'h0F9: pixels = 8'b00000000;
            12'h0FA: pixels = 8'b00000000;
            12'h0FB: pixels = 8'b00000000;
            12'h0FC: pixels = 8'b00000000;
            12'h0FD: pixels = 8'b00000000;
            12'h0FE: pixels = 8'b00000000;
            12'h0FF: pixels = 8'b00000000;
				
            // Символ 'G'
            12'h470: pixels = 8'b00111100;
            12'h471: pixels = 8'b01000010;
            12'h472: pixels = 8'b01000000;
            12'h473: pixels = 8'b01001110;
            12'h474: pixels = 8'b01000010;
            12'h475: pixels = 8'b01000010;
            12'h476: pixels = 8'b00111110;
            // Символ 'H'
            12'h480: pixels = 8'b01000010;
            12'h481: pixels = 8'b01000010;
            12'h482: pixels = 8'b01000010;
            12'h483: pixels = 8'b01111110;
            12'h484: pixels = 8'b01000010;
            12'h485: pixels = 8'b01000010;
            12'h486: pixels = 8'b01000010;
            // Символ 'I'
            12'h490: pixels = 8'b00011100;
            12'h491: pixels = 8'b00001000;
            12'h492: pixels = 8'b00001000;
            12'h493: pixels = 8'b00001000;
            12'h494: pixels = 8'b00001000;
            12'h495: pixels = 8'b00001000;
            12'h496: pixels = 8'b00011100;
            // Символ 'J'
            12'h4A0: pixels = 8'b00011110;
            12'h4A1: pixels = 8'b00000100;
            12'h4A2: pixels = 8'b00000100;
            12'h4A3: pixels = 8'b00000100;
            12'h4A4: pixels = 8'b00000100;
            12'h4A5: pixels = 8'b01000100;
            12'h4A6: pixels = 8'b00111000;
            // Символ 'K'
            12'h4B0: pixels = 8'b01000100;
            12'h4B1: pixels = 8'b01001000;
            12'h4B2: pixels = 8'b01010000;
            12'h4B3: pixels = 8'b01100000;
            12'h4B4: pixels = 8'b01010000;
            12'h4B5: pixels = 8'b01001000;
            12'h4B6: pixels = 8'b01000100;
            // Символ 'L'
            12'h4C0: pixels = 8'b01000000;
            12'h4C1: pixels = 8'b01000000;
            12'h4C2: pixels = 8'b01000000;
            12'h4C3: pixels = 8'b01000000;
            12'h4C4: pixels = 8'b01000000;
            12'h4C5: pixels = 8'b01000000;
            12'h4C6: pixels = 8'b01111110;
            // Символ 'M'
            12'h4D0: pixels = 8'b01000010;
            12'h4D1: pixels = 8'b01100110;
            12'h4D2: pixels = 8'b01011010;
            12'h4D3: pixels = 8'b01011010;
            12'h4D4: pixels = 8'b01000010;
            12'h4D5: pixels = 8'b01000010;
            12'h4D6: pixels = 8'b01000010;
            // Символ 'N'
            12'h4E0: pixels = 8'b01000010;
            12'h4E1: pixels = 8'b01100010;
            12'h4E2: pixels = 8'b01010010;
            12'h4E3: pixels = 8'b01001010;
            12'h4E4: pixels = 8'b01000110;
            12'h4E5: pixels = 8'b01000010;
            12'h4E6: pixels = 8'b01000010;
            // Символ 'O'
            12'h4F0: pixels = 8'b00111100;
            12'h4F1: pixels = 8'b01000010;
            12'h4F2: pixels = 8'b01000010;
            12'h4F3: pixels = 8'b01000010;
            12'h4F4: pixels = 8'b01000010;
            12'h4F5: pixels = 8'b01000010;
            12'h4F6: pixels = 8'b00111100;
            // Символ 'P'
            12'h500: pixels = 8'b01111100;
            12'h501: pixels = 8'b01000010;
            12'h502: pixels = 8'b01000010;
            12'h503: pixels = 8'b01111100;
            12'h504: pixels = 8'b01000000;
            12'h505: pixels = 8'b01000000;
            12'h506: pixels = 8'b01000000;
            // Символ 'Q'
            12'h510: pixels = 8'b00111100;
            12'h511: pixels = 8'b01000010;
            12'h512: pixels = 8'b01000010;
            12'h513: pixels = 8'b01000010;
            12'h514: pixels = 8'b01001010;
            12'h515: pixels = 8'b01000110;
            12'h516: pixels = 8'b00111110;
            // Символ 'R'
            12'h520: pixels = 8'b01111100;
            12'h521: pixels = 8'b01000010;
            12'h522: pixels = 8'b01000010;
            12'h523: pixels = 8'b01111100;
            12'h524: pixels = 8'b01010000;
            12'h525: pixels = 8'b01001000;
            12'h526: pixels = 8'b01000100;
            // Символ 'S'
            12'h530: pixels = 8'b00111100;
            12'h531: pixels = 8'b01000010;
            12'h532: pixels = 8'b01000000;
            12'h533: pixels = 8'b00111100;
            12'h534: pixels = 8'b00000010;
            12'h535: pixels = 8'b01000010;
            12'h536: pixels = 8'b00111100;
            // Символ 'T'
            12'h540: pixels = 8'b01111110;
            12'h541: pixels = 8'b00011000;
            12'h542: pixels = 8'b00011000;
            12'h543: pixels = 8'b00011000;
            12'h544: pixels = 8'b00011000;
            12'h545: pixels = 8'b00011000;
            12'h546: pixels = 8'b00011000;
            // Символ 'U'
            12'h550: pixels = 8'b01000010;
            12'h551: pixels = 8'b01000010;
            12'h552: pixels = 8'b01000010;
            12'h553: pixels = 8'b01000010;
            12'h554: pixels = 8'b01000010;
            12'h555: pixels = 8'b01000010;
            12'h556: pixels = 8'b00111100;
            // Символ 'V'
            12'h560: pixels = 8'b01000010;
            12'h561: pixels = 8'b01000010;
            12'h562: pixels = 8'b01000010;
            12'h563: pixels = 8'b01000010;
            12'h564: pixels = 8'b00100100;
            12'h565: pixels = 8'b00011000;
            12'h566: pixels = 8'b00011000;
            // Символ 'W'
            12'h570: pixels = 8'b01000010;
            12'h571: pixels = 8'b01000010;
            12'h572: pixels = 8'b01000010;
            12'h573: pixels = 8'b01011010;
            12'h574: pixels = 8'b01011010;
            12'h575: pixels = 8'b01011010;
            12'h576: pixels = 8'b00100100;
            // Символ 'X'
            12'h580: pixels = 8'b01000010;
            12'h581: pixels = 8'b00100100;
            12'h582: pixels = 8'b00011000;
            12'h583: pixels = 8'b00011000;
            12'h584: pixels = 8'b00100100;
            12'h585: pixels = 8'b01000010;
            12'h586: pixels = 8'b01000010;
            // Символ 'Y'
            12'h590: pixels = 8'b01000010;
            12'h591: pixels = 8'b00100100;
            12'h592: pixels = 8'b00011000;
            12'h593: pixels = 8'b00011000;
            12'h594: pixels = 8'b00011000;
            12'h595: pixels = 8'b00011000;
            12'h596: pixels = 8'b00011000;
            // Символ 'Z'
            12'h5A0: pixels = 8'b01111110;
            12'h5A1: pixels = 8'b00000100;
            12'h5A2: pixels = 8'b00001000;
            12'h5A3: pixels = 8'b00010000;
            12'h5A4: pixels = 8'b00100000;
            12'h5A5: pixels = 8'b01000000;
            12'h5A6: pixels = 8'b01111110;
            // Символ ','
            12'h2C0: pixels = 8'b00000000;
            12'h2C1: pixels = 8'b00000000;
            12'h2C2: pixels = 8'b00000000;
            12'h2C3: pixels = 8'b00000000;
            12'h2C4: pixels = 8'b00000000;
            12'h2C5: pixels = 8'b00011000;
            12'h2C6: pixels = 8'b00011000;
            12'h2C7: pixels = 8'b00110000;
            // Символ '.'
            12'h2E0: pixels = 8'b00000000;
            12'h2E1: pixels = 8'b00000000;
            12'h2E2: pixels = 8'b00000000;
            12'h2E3: pixels = 8'b00000000;
            12'h2E4: pixels = 8'b00000000;
            12'h2E5: pixels = 8'b00000000;
            12'h2E6: pixels = 8'b00011000;
            12'h2E7: pixels = 8'b00011000;
            // Символ '|'
            12'h7C0: pixels = 8'b00011000;
            12'h7C1: pixels = 8'b00011000;
            12'h7C2: pixels = 8'b00011000;
            12'h7C3: pixels = 8'b00011000;
            12'h7C4: pixels = 8'b00011000;
            12'h7C5: pixels = 8'b00011000;
            12'h7C6: pixels = 8'b00011000;
            12'h7C7: pixels = 8'b00011000;
            default: pixels = 8'b00000000;
        endcase
    end
endmodule
