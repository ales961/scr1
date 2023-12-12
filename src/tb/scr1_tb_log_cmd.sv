module scr1_tb_log_cmd();

always_ff @(posedge scr1_top_tb_ahb.i_top.i_imem_ahb.clk) begin
    if (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_resp == 2'b01) begin
        // valid data from ahb router
        if (
            (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[6 : 0] == 7'b0010011) &
            (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[14 : 12] == 3'b000)
        ) begin
            // detect command
            
            $display("ADDI, PC: %h", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.curr_pc);
            //$display("ADDI, PC2: %h", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_tracelog.trace_pc);
            //$display("ADDI, PC: %h", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_exu.pc_curr_ff);
        end
    end
end

endmodule