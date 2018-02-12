<map version="freeplane 1.2.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="High speed multichannel camera with 10 GbE" LOCALIZED_STYLE_REF="default" ID="ID_546949218" CREATED="1446422602548" MODIFIED="1446423657192"><hook NAME="MapStyle" zoom="0.683">

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<edge COLOR="#0033ff" WIDTH="4"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<node TEXT="Chapter 1. Introduction" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_130253255" CREATED="1446422602548" MODIFIED="1446428611906">
<edge COLOR="#00b439" WIDTH="2"/>
<node TEXT="1. Short introduction" ID="ID_597670931" CREATED="1446422602550" MODIFIED="1446423688158" COLOR="#990000">
<edge COLOR="#990000" WIDTH="1"/>
<node TEXT="The following thesis is divided into 6 chapters. The first chapter describes the scientific camera design, the theory and current state of technology and also the reasons for doing this work as well as the basic requirements. Second chapter presents the concept phase of the project, where the information regarding possible ways of achieving the requirements is presented. After the concept chapter, the realisation is described in chapter 4" ID="ID_889490317" CREATED="1446427621985" MODIFIED="1446428919405"/>
</node>
<node TEXT="2. Camera design theory" ID="ID_598522875" CREATED="1446422602549" MODIFIED="1446601536033" COLOR="#990000">
<edge COLOR="#990000" WIDTH="1"/>
<node TEXT="2.1 Introduction" ID="ID_330088082" CREATED="1446428937441" MODIFIED="1446601759128">
<node TEXT="This section introduces the topic of scientific camera design. Reasons to do this work are presented as well as the today&apos;s state of knowledge regarding camera design" ID="ID_1761556474" CREATED="1446422602550" MODIFIED="1446423475190" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="This section contains the today&apos;s state of knowledge regarding camera design. Firstly" ID="ID_1407810457" CREATED="1446422602550" MODIFIED="1446423475190" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT=" Camera is an electro-mechanical device used for capturing images or videos.&#xa;&#xa;It consists of few main parts: optics, sensor, processing system and interface.&#xa;&#xa;All of those parts are necessary for a camera to work. A special kind of cameras are scientific cameras used for astronomical or medical purposes. Their design is much more complex than a design of a typical camera due to specific requirements like sensitivity or high speed operation." ID="ID_591850243" CREATED="1446605114565" MODIFIED="1446605126445"/>
</node>
<node TEXT="2.2 Basic camera system design" ID="ID_762785172" CREATED="1446428944602" MODIFIED="1446689890818">
<node TEXT="Mechanical" ID="ID_1419803929" CREATED="1446428957588" MODIFIED="1446428960845">
<node TEXT="Optics" ID="ID_616680910" CREATED="1446689977370" MODIFIED="1446689980047">
<node TEXT="Lenses parameters" ID="ID_1806948176" CREATED="1446689982272" MODIFIED="1446689986273"/>
</node>
</node>
<node TEXT="Electronics" ID="ID_31365026" CREATED="1446428961990" MODIFIED="1446428964381">
<node TEXT="Controlling and acquisition processors" ID="ID_528311725" CREATED="1446422602549" MODIFIED="1446423475189" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="Fpga" ID="ID_672740798" CREATED="1446422602549" MODIFIED="1446423475189" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Soc" ID="ID_366834779" CREATED="1446422602550" MODIFIED="1446423475189" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Drivers" ID="ID_286614781" CREATED="1446422602550" MODIFIED="1446423475190" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
</node>
<node TEXT="Firmware" ID="ID_1313025647" CREATED="1446428966246" MODIFIED="1446428968466"/>
<node TEXT="Software" ID="ID_122453841" CREATED="1446428969670" MODIFIED="1446428971379"/>
<node TEXT="Sensors" ID="ID_1492955480" CREATED="1446422602549" MODIFIED="1446423475183" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="Different interfaces" ID="ID_1988958164" CREATED="1446422602549" MODIFIED="1446423475183" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="CSI" ID="ID_822663046" CREATED="1446422602549" MODIFIED="1446423475183" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="DPI" ID="ID_1169061467" CREATED="1446422602549" MODIFIED="1446423475184" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="LVDS" ID="ID_1486182752" CREATED="1446422602549" MODIFIED="1446423475184" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="LVDS signaling standard (&quot;Low Voltage Differential Signaling&quot;) is heavily used in high speed digital electronics systems. This serial link composed of two positive and negative signals with opposite phases relationships allow for highspeed communication of even up to 25.8 Gbps link with standarised interfaces." ID="ID_1436780041" CREATED="1446422602549" MODIFIED="1446423475185" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="SerDes Sensor equipped with LVDS interface for data transmission." ID="ID_561021745" CREATED="1446422602549" MODIFIED="1446423475185" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Data meeds to deserialised." ID="ID_1371832453" CREATED="1446422602549" MODIFIED="1446423475185" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="" ID="ID_1812301297" CREATED="1446422602549" MODIFIED="1446423475186" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
</node>
<node TEXT="Custom AFE" ID="ID_57471121" CREATED="1446422602549" MODIFIED="1446423475186" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="High speed data readout" ID="ID_592004013" CREATED="1446422602549" MODIFIED="1446423475187" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="CMOS sensors" ID="ID_358164403" CREATED="1446422602549" MODIFIED="1446423475187" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="CCD Sensors" ID="ID_668932999" CREATED="1446422602549" MODIFIED="1446423475187" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
</node>
<node TEXT="2.3 Scientific camera specifics" ID="ID_399605519" CREATED="1446689948837" MODIFIED="1446689958457"/>
<node TEXT="2.4 Exiting devices on market" ID="ID_1267675140" CREATED="1446422602549" MODIFIED="1446689962993" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="FLIR?" ID="ID_691083100" CREATED="1446422602549" MODIFIED="1446423475188" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="" ID="ID_1633232373" CREATED="1446422602549" MODIFIED="1446423475189" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="ELPHEL" ID="ID_1817694161" CREATED="1446422602549" MODIFIED="1446423475189" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="K20" ID="ID_958292389" CREATED="1446422602549" MODIFIED="1446423475189" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
</node>
<node TEXT="3. Reason to do this project" ID="ID_1220231156" CREATED="1446422602548" MODIFIED="1446423719210" COLOR="#990000">
<edge COLOR="#990000" WIDTH="1"/>
<node TEXT="Universal open, camera design architecture" ID="ID_39247686" CREATED="1446422602548" MODIFIED="1446423475190" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="One cannot deny the fact that, novelty is the   in today&apos;s high-tech electronics market the most important aspect of the product is time-to-market. Sometimes even a worse product can win on the market just due to the fact that it was released eariler.  In specialised markets where COTS (Custom - Off - The - Shelf) components are being used by customers, the possibility to quickly adjust the parameters of a specific system given suited to the customers need is a key to success.  Another" ID="ID_941686722" CREATED="1446422602548" MODIFIED="1446423475190" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Scientific applications for camera systems are, undoubtedly broad." ID="ID_1523528839" CREATED="1446422602548" MODIFIED="1446423475191" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="The purpose of my thesis is to address the issue of the scientific camera design. One cannot deny the fact that there is no open framework or base for such systems. All designs are custom and what is needed on the market is a system which would allow for a faster time-to-market, less error prone development and high throughput connectivity. Also an easy way of adding a support for different sensors is essential." ID="ID_1214957902" CREATED="1446605144928" MODIFIED="1446605147223"/>
</node>
<node TEXT="4. Requirements" ID="ID_1339479480" CREATED="1446422602549" MODIFIED="1446423724001" COLOR="#990000">
<edge COLOR="#990000" WIDTH="1"/>
<node TEXT="high processing performance - for support of high resolutions" ID="ID_41684410" CREATED="1446422602549" MODIFIED="1446605613064" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="ease of adding a support for a different sensor" ID="ID_1205926005" CREATED="1446422602549" MODIFIED="1446605628152" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Secure and versatile OS" ID="ID_499419852" CREATED="1446422602549" MODIFIED="1446423475191" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="RTOS capability" ID="ID_856114536" CREATED="1446422602549" MODIFIED="1446423475191" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Future proof" ID="ID_1710888191" CREATED="1446422602549" MODIFIED="1446423475192" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
<node TEXT="high speed communication - to send high amounts of data live" ID="ID_1017381468" CREATED="1446605644935" MODIFIED="1446605652439"/>
<node TEXT="multichannel operation - astronomical as well as medical applications require it" ID="ID_1692810004" CREATED="1446605672144" MODIFIED="1446605672144"/>
<node TEXT="As described in previous sections, mechanics, casing, envirionment related design choices are different for each camera project. This is why this work doesn&apos;t consist of design of optics and other mechanical aspects of camera design. This project goal is to address the intersection of all camera problems provide a framework that will allow for faster development." ID="ID_521179093" CREATED="1446690041991" MODIFIED="1446690184460"/>
</node>
</node>
<node TEXT="Chapter 2. Concept of design" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1617699741" CREATED="1446422602550" MODIFIED="1446428617697">
<edge COLOR="#00b439" WIDTH="2"/>
<node TEXT="1. Introduction" LOCALIZED_STYLE_REF="default" ID="ID_1549792213" CREATED="1446422602551" MODIFIED="1446423821706">
<edge COLOR="#990000" WIDTH="1"/>
<node TEXT="This section tries to answer the basic question regarding the project. What is the best way to design a framework for scientific camera development?" ID="ID_70586126" CREATED="1446422602551" MODIFIED="1446423475199" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="System concept" LOCALIZED_STYLE_REF="default" ID="ID_1917087394" CREATED="1446422602551" MODIFIED="1446423657201">
<edge COLOR="#990000" WIDTH="1"/>
<node TEXT="System modelling" ID="ID_1056076462" CREATED="1446422602551" MODIFIED="1446423475198" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="SysML" ID="ID_1852531968" CREATED="1446422602551" MODIFIED="1446423475198" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="UML" ID="ID_254241577" CREATED="1446422602551" MODIFIED="1446423475198" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
</node>
</node>
<node TEXT="2. Camera functions" LOCALIZED_STYLE_REF="default" ID="ID_1830419568" CREATED="1446422602550" MODIFIED="1446423829206">
<edge COLOR="#990000" WIDTH="1"/>
<node TEXT="Ethernet control and data reception" ID="ID_306342408" CREATED="1446422602550" MODIFIED="1446423475192" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="Control" ID="ID_1485937159" CREATED="1446422602550" MODIFIED="1446423475193" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="Over ethernet - PC" ID="ID_955764147" CREATED="1446422602550" MODIFIED="1446423475193" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="In future control over FADE command link" ID="ID_167582014" CREATED="1446422602550" MODIFIED="1446423475193" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
</node>
<node TEXT="Data acquisition" ID="ID_379484552" CREATED="1446422602550" MODIFIED="1446423475193" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
<node TEXT="Sensor data acquisition" ID="ID_1661826517" CREATED="1446422602550" MODIFIED="1446423475193" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="Ease of adding own sensor" ID="ID_306783240" CREATED="1446422602550" MODIFIED="1446423475193" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
</node>
<node TEXT="3. Firmware concept" LOCALIZED_STYLE_REF="default" ID="ID_1955077930" CREATED="1446422602550" MODIFIED="1446423837054">
<edge COLOR="#990000" WIDTH="1"/>
<node TEXT="Operating system operation concept" ID="ID_464520390" CREATED="1446422602550" MODIFIED="1446423475195" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="Software" ID="ID_806396858" CREATED="1446422602550" MODIFIED="1446423475195" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="RTOS" ID="ID_982142391" CREATED="1446422602550" MODIFIED="1446423475195" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Linux" ID="ID_995314378" CREATED="1446422602550" MODIFIED="1446423475195" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Hypervisor" ID="ID_1376681457" CREATED="1446422602550" MODIFIED="1446423475195" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Purpose" ID="ID_401201037" CREATED="1446422602550" MODIFIED="1446423475195" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Linux + RTOS" ID="ID_481096753" CREATED="1446422602551" MODIFIED="1446423475196" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="or just RTOS?" ID="ID_1546224785" CREATED="1446422602551" MODIFIED="1446423475196" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="hypervisor?" ID="ID_1908154303" CREATED="1446422602551" MODIFIED="1446423475196" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="Available hypervisors are very immature designs which are being shown on company&apos;s website in order for a customer to buy a commercial version." ID="ID_259520879" CREATED="1446422602551" MODIFIED="1446423475196" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="http://openvirtualization.org/downloadsoftware.html" ID="ID_373142888" CREATED="1446422602551" MODIFIED="1446423475196" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="http://www.wiki.xilinx.com/Xenomai+for+Zynq" ID="ID_1678495932" CREATED="1446422602551" MODIFIED="1446423475196" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
</node>
<node TEXT="Yocto versus Petalinux" ID="ID_1962462062" CREATED="1446422602551" MODIFIED="1446423475196" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Xenomai" ID="ID_1658116226" CREATED="1446422602551" MODIFIED="1446423475197" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="SierraTEE" ID="ID_902091124" CREATED="1446422602551" MODIFIED="1446423475197" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="SafeG" ID="ID_1290354307" CREATED="1446422602551" MODIFIED="1446423475197" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Xen?" ID="ID_1092453688" CREATED="1446422602551" MODIFIED="1446423475197" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Android" ID="ID_16933140" CREATED="1446422602551" MODIFIED="1446423475197" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Article about the speed of real time linux on embedded system." ID="ID_1206895361" CREATED="1446422602551" MODIFIED="1446423475197" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="https://www.osadl.org/fileadmin/dam/rtlws/12/Brown.pdf" ID="ID_187791795" CREATED="1446422602551" MODIFIED="1446423475198" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
</node>
<node TEXT="This section contains a possible operating systems scenarios that can be implemented in the camera&apos;s framework. Multiple possible options were evaluated and the best solution was chosen." ID="ID_578778922" CREATED="1446427518549" MODIFIED="1446427577846"/>
</node>
</node>
<node TEXT="4. Digital system design concept" ID="ID_771721798" CREATED="1446422602550" MODIFIED="1446423899365" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
<node TEXT="CMV4000 IP Core" ID="ID_401535626" CREATED="1446422602550" MODIFIED="1446423475194" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="VDMA" ID="ID_773173353" CREATED="1446422602550" MODIFIED="1446423475194" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Video In to AXIS" ID="ID_515816536" CREATED="1446422602550" MODIFIED="1446423475194" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="FADE" ID="ID_17740499" CREATED="1446422602550" MODIFIED="1446423475194" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Custom Control Reg IP" ID="ID_1479769582" CREATED="1446422602550" MODIFIED="1446423475194" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
</node>
<node TEXT="Chapter 3. Realization" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_517084066" CREATED="1446422602551" MODIFIED="1446428627445">
<edge COLOR="#00b439" WIDTH="2"/>
<node TEXT="Firmware" LOCALIZED_STYLE_REF="default" ID="ID_22643416" CREATED="1446422602551" MODIFIED="1446423657209">
<edge COLOR="#990000" WIDTH="1"/>
<node TEXT="Linux" ID="ID_524236890" CREATED="1446422602551" MODIFIED="1446423475200" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="FreeRTOS?" ID="ID_1115587142" CREATED="1446422602551" MODIFIED="1446423475200" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
<node TEXT="System specification" LOCALIZED_STYLE_REF="default" ID="ID_1491222590" CREATED="1446422602551" MODIFIED="1446423657212">
<edge COLOR="#990000" WIDTH="1"/>
<node TEXT="SysML" ID="ID_109032757" CREATED="1446422602551" MODIFIED="1446423475200" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
<node TEXT="Simulink" ID="ID_1884687635" CREATED="1446422602552" MODIFIED="1446423475200" COLOR="#111111">
<edge COLOR="#111111" WIDTH="thin"/>
</node>
</node>
<node TEXT="Hardware - description" LOCALIZED_STYLE_REF="default" ID="ID_336366634" CREATED="1446422602552" MODIFIED="1446423657214">
<edge COLOR="#990000" WIDTH="1"/>
</node>
<node TEXT="Novelity" LOCALIZED_STYLE_REF="default" ID="ID_1510242370" CREATED="1446422602552" MODIFIED="1446423657216">
<edge COLOR="#990000" WIDTH="1"/>
</node>
<node TEXT="Control software" LOCALIZED_STYLE_REF="default" ID="ID_1570592556" CREATED="1446422602552" MODIFIED="1446423657218">
<edge COLOR="#990000" WIDTH="1"/>
</node>
</node>
<node TEXT="Chapter 4. Tests" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_562215028" CREATED="1446422602552" MODIFIED="1446428754318">
<edge COLOR="#00b439" WIDTH="2"/>
<node TEXT="Data reception" LOCALIZED_STYLE_REF="default" ID="ID_836473481" CREATED="1446422602552" MODIFIED="1446423657221">
<edge COLOR="#990000" WIDTH="1"/>
</node>
<node TEXT="Control" LOCALIZED_STYLE_REF="default" ID="ID_361765075" CREATED="1446422602552" MODIFIED="1446423657226">
<edge COLOR="#990000" WIDTH="1"/>
</node>
<node TEXT="Approximate time to design another camera using designed framework" LOCALIZED_STYLE_REF="default" ID="ID_833351197" CREATED="1446422602552" MODIFIED="1446423657231">
<edge COLOR="#990000" WIDTH="1"/>
</node>
</node>
<node TEXT="Chapter 5. Summary" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_380887895" CREATED="1446422602552" MODIFIED="1446428762347">
<edge COLOR="#00b439" WIDTH="2"/>
<node TEXT="Achieved parameters" ID="ID_173599232" CREATED="1446422602552" MODIFIED="1446423475202" COLOR="#990000">
<edge COLOR="#990000" WIDTH="1"/>
</node>
<node TEXT="Achieved functionality" ID="ID_410349163" CREATED="1446422602552" MODIFIED="1446423475202" COLOR="#990000">
<edge COLOR="#990000" WIDTH="1"/>
</node>
<node TEXT="Future work" ID="ID_176573821" CREATED="1446422602552" MODIFIED="1446423475202" COLOR="#990000">
<edge COLOR="#990000" WIDTH="1"/>
</node>
<node TEXT="Summary" ID="ID_73260885" CREATED="1446428777207" MODIFIED="1446428779438"/>
</node>
<node TEXT="Bibliography" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_572851756" CREATED="1446422602552" MODIFIED="1446423657238">
<edge COLOR="#00b439" WIDTH="2"/>
<node TEXT="http://www.ntu.edu.sg/home/sfahmy/files/papers/asap2013-khoa.pdf" ID="ID_1837526177" CREATED="1446422602552" MODIFIED="1446423475203" COLOR="#990000">
<edge COLOR="#990000" WIDTH="1"/>
</node>
<node TEXT="Hypervisor for ARM+FPGA" ID="ID_1972542862" CREATED="1446422602552" MODIFIED="1446423475203" COLOR="#990000">
<edge COLOR="#990000" WIDTH="1"/>
</node>
</node>
</node>
</map>
