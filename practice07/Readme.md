# Lab 07

## 실습 내용

### **디지털 시계 (분:초) 부분 설계 - Debounce 적용 전**

![](https://github.com/woongchoi-sookmyung/LogicDesign/blob/master/practice07/figs/block_diagram.png)

- GitHub에 제공된 소스코드 사용 - 다른 모듈 건드리지 말 것

- top module (top_hms_clock) 만 채워서 설계

- 이번 실습은 Test Bench 생략가능 (ModelSim 검증하고 FPGA 하는게 더 빠른 경우가 많음)


### **FPGA**

- 스위치의Bounce 현상에대해관찰
- 코드를수정하여Debounce적용후스위치테스트

### **Quiz**

- 코드에서i_sw2를 누르는 순간이 아닌 `때는 순간 숫자가 증가`하게 하려면?

```verilog
reg		o_sec_clk		;
reg		o_min_clk		;
always @(*) begin
	case(o_mode)
		MODE_CLOCK : begin
			o_sec_clk = clk_1hz;
			o_min_clk = i_max_hit_sec;
		end
		MODE_SETUP : begin
			case(o_position)
				POS_SEC : begin
					o_sec_clk = ~i_sw2;
					o_min_clk = 1'b0;
				end
				POS_MIN : begin
					o_sec_clk = 1'b0;
					o_min_clk = ~i_sw2;
				end
			endcase
		end
	endcase
end
```

### **Project Guide : 질의응답불가**

- 시:분:초에 대한 디지털 시계 완성

- 설정모드에서 7-segment의 dp를 활용한 설계

: 예)초 설정 시 - 초 부분의 dp led를 점등

- Blink 모드개발

: 설정모드에서 설정부분을 깜빡이게 Display
