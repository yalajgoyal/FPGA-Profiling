<project xmlns="com.autoesl.autopilot.project" name="HLS_project_apply_watermark" top="apply_watermark">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../Vitis_Accel_Examples/cpp_kernels/critical_path/src/krnl_apply_watermark_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="Vitis_Accel_Examples/common/includes/bitmap/bitmap.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="Vitis_Accel_Examples/cpp_kernels/critical_path/src/apply_watermark.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

