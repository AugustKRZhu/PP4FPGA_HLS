<project xmlns="com.autoesl.autopilot.project" top="dft" name="DFT_HLS">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim"/>
    </Simulation>
    <files xmlns="">
        <file name="../../out.gold.dat" sc="0" tb="1" cflags="  -Wno-unknown-pragmas"/>
        <file name="../../dft_test.cpp" sc="0" tb="1" cflags="  -Wno-unknown-pragmas"/>
        <file name="dft.h" sc="0" tb="false" cflags=""/>
        <file name="dft.cpp" sc="0" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="inactive"/>
        <solution name="solution2" status="active"/>
    </solutions>
</project>

