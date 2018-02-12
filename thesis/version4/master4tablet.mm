<map version="0.9.0">
<node TEXT="High speed multichannel camera with 10 GbE">
<node TEXT="Chapter 1. Introduction">
<node TEXT="1.1. Short introduction">
<node TEXT="The following thesis is divided into 6 chapters. The first chapter describes the scientific camera design, the theory and current state of technology and also the reasons for doing this work as well as the basic requirements. Second chapter presents the concept phase of the project, where the information regarding possible ways of achieving the requirements is presented. After the concept chapter, the realisation is described in chapter 4"/>
</node>
<node TEXT="1.2. Camera design theory">
<node TEXT="1.2.1 Introduction">
<node TEXT="This section introduces the topic of scientific camera design. Reasons to do this work are presented as well as the today's state of knowledge regarding camera design"/>
<node TEXT="This section contains the today's state of knowledge regarding camera design. Firstly"/>
<node TEXT=" Camera is an electro-mechanical device used for capturing images or videos.  It consists of few main parts: optics, sensor, processing system and interface.  All of those parts are necessary for a camera to work. A special kind of cameras are scientific cameras used for astronomical or medical purposes. Their design is much more complex than a design of a typical camera due to specific requirements like sensitivity or high speed operation."/>
</node>
<node TEXT="1.2.3 Scientific camera specifics">
<node TEXT="Extremely low noise"/>
<node TEXT="Cooled CCD cameras"/>
<node TEXT="Binning"/>
<node TEXT="Framing"/>
<node TEXT="CCD analogue sampling"/>
<node TEXT="High data throughput"/>
<node TEXT="Real-time video processing"/>
</node>
<node TEXT="1.2.4 Exiting devices on market">
<node TEXT="ELPHEL"/>
<node TEXT="K20"/>
<node TEXT="IoT Core">
<node TEXT="http://www.vigek.com/iot-core.html"/>
</node>
</node>
<node TEXT="Summary">
<node TEXT="Multitiude and variety of sensors, interfaces as well as requirements regarding specific camera project make the design immensly difficult. Given the parameters for a specific application camera the firmware, data acquisition and data transmission has to be designed specifically for each design. This poses a troublesome aspect of camera design that needs to be addressed."/>
</node>
<node TEXT="Mechanical">
<node TEXT="Optics">
<node TEXT="Lenses parameters">
<node TEXT="F stops"/>
<node TEXT="Focal length"/>
<node TEXT="Aperture"/>
</node>
<node TEXT="mount"/>
</node>
<node TEXT="Chasis"/>
<node TEXT="Environmental">
<node TEXT="CCD Cooling"/>
</node>
</node>
<node TEXT="Electronics">
<node TEXT="Controlling and acquisition processors">
<node TEXT="Fpga"/>
<node TEXT="Soc"/>
<node TEXT="Drivers"/>
</node>
<node TEXT="Interface">
<node TEXT="Wireless">
<node TEXT="WiFi"/>
<node TEXT="Bluetooth?"/>
</node>
<node TEXT="Wire">
<node TEXT="USB"/>
<node TEXT="PCIe"/>
<node TEXT="ThunderBolt"/>
<node TEXT="Camera link"/>
<node TEXT="FireWire"/>
<node TEXT="Ethernet">
<node TEXT="FADE interface"/>
</node>
</node>
<node TEXT="Table with comparison"/>
</node>
<node TEXT="Data storage">
<node TEXT="SD card"/>
<node TEXT="Flash"/>
<node TEXT="SATA Drive">
<node TEXT="SSD drive">
<node TEXT="A valid option for high bandwidth applications."/>
</node>
</node>
</node>
<node TEXT="Video formats">
<node TEXT="Color formats">
<node TEXT="YUV"/>
<node TEXT="RGB"/>
</node>
<node TEXT="Compression formats">
<node TEXT="H264"/>
<node TEXT="MPEG"/>
<node TEXT="JPEG"/>
</node>
</node>
<node TEXT="Communication and synchronisation">
<node TEXT="Ethernet"/>
<node TEXT="MLVDS"/>
<node TEXT=""/>
</node>
<node TEXT="front end"/>
</node>
<node TEXT="Firmware">
<node TEXT="Linux">
<node TEXT="Video4Linux"/>
<node TEXT="usb ehc ovc?"/>
</node>
<node TEXT="Baremetal"/>
<node TEXT="RTOS"/>
<node TEXT="Frameworks">
<node TEXT="OpenCV"/>
</node>
</node>
<node TEXT="Software">
<node TEXT="PC control">
<node TEXT="gstreamer"/>
</node>
</node>
<node TEXT="Sensors">
<node TEXT="Different interfaces">
<node TEXT="CSI"/>
<node TEXT="DPI"/>
<node TEXT="LVDS">
<node TEXT="LVDS signaling standard (&quot;Low Voltage Differential Signaling&quot;) is heavily used in high speed digital electronics systems. This serial link composed of two positive and negative signals with opposite phases relationships allow for highspeed communication of even up to 25.8 Gbps link with standarised interfaces."/>
<node TEXT="SerDes Sensor equipped with LVDS interface for data transmission."/>
<node TEXT="Data meeds to deserialised."/>
<node TEXT=""/>
</node>
</node>
<node TEXT="Custom AFE"/>
<node TEXT="High speed data readout"/>
<node TEXT="CMOS sensors"/>
<node TEXT="CCD Sensors"/>
<node TEXT="Camera Interfaces">
<node TEXT="LVDS"/>
<node TEXT="CSI">
<node TEXT="MIPI"/>
</node>
<node TEXT="DSI"/>
<node TEXT="Parallel"/>
<node TEXT="Analogue"/>
</node>
</node>
<node TEXT="analog cameras specifics"/>
<node TEXT="digital camera design specifics"/>
</node>
<node TEXT="1.3. Reason to do this project">
<node TEXT="Universal open, camera design architecture"/>
<node TEXT="One cannot deny the fact that, novelty is the in today's high-tech electronics market the most important aspect of the product is time-to-market. Sometimes even a worse product can win on the market just due to the fact that it was released eariler. In specialised markets where COTS (Custom - Off - The - Shelf) components are being used by customers, the possibility to quickly adjust the parameters of a specific system given suited to the customers need is a key to success. Another"/>
<node TEXT="Scientific applications for camera systems are, undoubtedly broad."/>
<node TEXT="The purpose of my thesis is to address the issue of the scientific camera design. One cannot deny the fact that there is no open framework or base for such systems. All designs are custom and what is needed on the market is a system which would allow for a faster time-to-market, less error prone development and high throughput connectivity. Also an easy way of adding a support for different sensors is essential."/>
</node>
<node TEXT="1.4. Requirements">
<node TEXT="high processing performance - for support of high resolutions"/>
<node TEXT="ease of adding a support for a different sensor"/>
<node TEXT="Secure and versatile OS">
<node TEXT="RTOS capability"/>
<node TEXT="Future proof"/>
</node>
<node TEXT="high speed communication - to send high amounts of data live"/>
<node TEXT="multichannel operation - astronomical as well as medical applications require it"/>
<node TEXT="As described in previous sections, mechanics, casing, envirionment related design choices are different for each camera project. This is why this work doesn't consist of design of optics and other mechanical aspects of camera design. This project goal is to address the intersection of all camera problems provide a framework that will allow for faster development."/>
</node>
</node>
<node TEXT="Chapter 2. Concept of design">
<node TEXT="1. Introduction">
<node TEXT="This section tries to answer the basic question regarding the project. What is the best way to design a framework for scientific camera development?"/>
<node TEXT="Framework has to be built with some assumptions. These choices are critical and may have influence on any design build upon this project. Satisfying a number of requirements is a difficult task."/>
<node TEXT="Firstly main camera functions are presented. Then main requirements are analysed and basic camera functional block diagram is proposed. Based on this diagram the system is going to be modelled and designed."/>
</node>
<node TEXT="2. Camera functions">
<node TEXT="Ethernet control and data reception">
<node TEXT="Control">
<node TEXT="Over ethernet - PC">
<node TEXT="In future control over FADE command link"/>
</node>
</node>
<node TEXT="Data acquisition">
<node TEXT=""/>
</node>
</node>
<node TEXT="Sensor data acquisition">
<node TEXT="Ease of adding own sensor"/>
</node>
</node>
<node TEXT="2. Requirement analysis">
<node TEXT="High throughput">
<node TEXT="FPGA -&gt; GTX transceivers"/>
<node TEXT="SoC -&gt; PCIe or USB 3.0"/>
</node>
<node TEXT="Multichannel operation">
<node TEXT="Common Vsync/Hsync"/>
<node TEXT="System clock sync -&gt; trigger synchronistaion"/>
<node TEXT="PTP sync over Ethernet"/>
<node TEXT="SRIO synchronisation"/>
</node>
<node TEXT="Real time operation">
<node TEXT="Multicore SoC">
<node TEXT="One core with versatile Linux">
<node TEXT="Like in WindRiver-&gt; link"/>
</node>
<node TEXT="Other core with RTOS"/>
</node>
</node>
</node>
<node TEXT="3. Main project desicions">
<node TEXT="Processor">
<node TEXT="FPGA + Multicore application processor">
<node TEXT="Zynq"/>
<node TEXT=""/>
</node>
</node>
<node TEXT="Exemplanatory sensor">
<node TEXT="CMV4000">
<node TEXT="High framerate"/>
</node>
</node>
<node TEXT="3. Firmware concept">
<node TEXT="Operating system operation concept">
<node TEXT="Software"/>
<node TEXT="RTOS"/>
<node TEXT="Linux"/>
<node TEXT="Hypervisor"/>
<node TEXT="Purpose"/>
<node TEXT="Linux + RTOS">
<node TEXT="or just RTOS?"/>
<node TEXT="hypervisor?">
<node TEXT="Available hypervisors are very immature designs which are being shown on company's website in order for a customer to buy a commercial version.">
<node TEXT="http://openvirtualization.org/downloadsoftware.html"/>
<node TEXT="http://www.wiki.xilinx.com/Xenomai+for+Zynq"/>
</node>
</node>
<node TEXT="Yocto versus Petalinux"/>
<node TEXT="Xenomai"/>
<node TEXT="SierraTEE"/>
<node TEXT="SafeG"/>
<node TEXT="Xen?"/>
<node TEXT="Android"/>
<node TEXT="Article about the speed of real time linux on embedded system.">
<node TEXT="https://www.osadl.org/fileadmin/dam/rtlws/12/Brown.pdf"/>
</node>
</node>
<node TEXT="This section contains a possible operating systems scenarios that can be implemented in the camera's framework. Multiple possible options were evaluated and the best solution was chosen."/>
<node TEXT="2.3.1."/>
</node>
</node>
<node TEXT="4. Digital system design concept">
<node TEXT="CMV4000 IP Core"/>
<node TEXT="VDMA"/>
<node TEXT="Video In to AXIS"/>
<node TEXT="FADE"/>
<node TEXT="Custom Control Reg IP"/>
</node>
</node>
<node TEXT="4. Camera functional block diagram">
<node TEXT=""/>
</node>
</node>
<node TEXT="Chapter 3. Realization">
<node TEXT="Firmware">
<node TEXT="Linux"/>
<node TEXT="FreeRTOS?"/>
</node>
<node TEXT="System specification">
<node TEXT="SysML"/>
<node TEXT="Simulink"/>
</node>
<node TEXT="3.4 Digital System Design"/>
<node TEXT="3.3 Firmware">
<node TEXT="3.3.1 Firmware architecture"/>
<node TEXT="3.3.2 Linux operating system">
<node TEXT="3.3.2.1 X"/>
</node>
<node TEXT="3.3.3 RTOS system"/>
<node TEXT="3.3.4 Communication"/>
</node>
<node TEXT="3.2 Modelling of the camera design">
<node TEXT="3.2.1 SysML model">
<node TEXT="3.2.1.1 SysML"/>
<node TEXT="3.2.1.2 Polarsys IDE for modelling"/>
</node>
<node TEXT="3.2.2 System Flowchart"/>
<node TEXT="3.3.3 Projects WBS"/>
<node TEXT="3.3.4 Project risks"/>
</node>
<node TEXT="3.1 Introduction">
<node TEXT="3.1.1 Hardware platform">
<node TEXT="Development board">
<node TEXT="ZC706"/>
</node>
<node TEXT="Sensor board">
<node TEXT="CMV4000"/>
</node>
<node TEXT="Controlling system - PC">
<node TEXT="Intel 10 GbE network card"/>
</node>
</node>
</node>
</node>
<node TEXT="Chapter 4. Tests">
<node TEXT="Data reception"/>
<node TEXT="Control"/>
<node TEXT="Approximate time to design another camera using designed framework"/>
</node>
<node TEXT="Chapter 5. Summary">
<node TEXT="Achieved parameters"/>
<node TEXT="Achieved functionality"/>
<node TEXT="Future work"/>
<node TEXT="Summary"/>
</node>
<node TEXT="Chapter 6. Appendix">
<node TEXT="6.1. Project structure">
<node TEXT="6.1.1 Compiling the project"/>
</node>
</node>
<node TEXT="Bibliography">
<node TEXT="http://www.ntu.edu.sg/home/sfahmy/files/papers/asap2013-khoa.pdf">
<richcontent TYPE="NOTE">
<html>
<head/>
<body>
<p>Test</p>
</body>
</html>
</richcontent>
</node>
<node TEXT="Cameras companies">
<node TEXT="http://www.andor.com/scientific-cameras"/>
<node TEXT="http://www.qimaging.com/products/cameras/scientific/"/>
<node TEXT="http://www.thorlabs.de/navigation.cfm?guide_id=2365"/>
</node>
<node TEXT="Xilinx documentation"/>
<node TEXT="Books">
<node TEXT="FPGA">
<node TEXT="100 Power Tips For FPGA Designers Evgeni Stavinov"/>
</node>
<node TEXT="Camera design"/>
<node TEXT="System modelling"/>
</node>
<node TEXT="Publications">
<node TEXT="FADE">
<node TEXT="http://arxiv.org/abs/1503.06871"/>
<node TEXT="Low latency protocol for transmission of measurement data from FPGA to Linux computer via 10 Gbps Ethernet link Wojciech M. Zabolotny"/>
</node>
</node>
<node TEXT="Master thesis">
<node TEXT="Gk"/>
<node TEXT="Lk"/>
<node TEXT="Ks"/>
</node>
</node>
</node>
</map>
