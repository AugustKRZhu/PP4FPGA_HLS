<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="hls" top="dft">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <files>
        <file name="../../dft_test.cpp" sc="0" tb="1" cflags="  -Wno-unknown-pragmas"/>
        <file name="../../out.gold.dat" sc="0" tb="1" cflags="  -Wno-unknown-pragmas"/>
        <file name="coefficients8.h" sc="0" tb="false" cflags=""/>
        <file name="dft.cpp" sc="0" tb="false" cflags=""/>
        <file name="dft.h" sc="0" tb="false" cflags=""/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

