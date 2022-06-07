
% library.pl
                    
				% DICTIONARY OF TERMS	

%list_of_terms(_list).					
list_of_terms(_list):-findall(_term,term(_,_term,_),_list).

%term(_code,_term,_description).
term(1,'AC','Alternating-current (AC) is the frequency of the electric current given by a power outlet, which is 50Hz. If it is not stable then it might damage the device that is pluged to that same outlet or it will not be able to power it.').
term(2,'ATA','ATA is the term for the port for data cable connection between a motherboard and any type of storage device, including hard disk drives and optical disc drives. There ate two type of ATAs which are Parallel ATA (PATA) and Serial ATA (SATA) which replaces the PATA version. There are also versions of SATA connectors which are SATA1, SATA2 and SATA3.').
term(3,'ATX','ATX (Advanced Technology eXtended) is a motherboard form factor specification developed by Intel in 1995 to improve on previous de facto standards like the AT form factor. It was the first major change in desktop computer enclosure, motherboard and power supply design in many years, improving standardization and interchangeability of parts. The specification defines the key mechanical dimensions, mounting point, I/O panel, power and connector interfaces between a computer case, a motherboard and a power supply.').
term(4,'BIOS','The Basic Input/Output System (BIOS), also known as System BIOS, ROM BIOS or PC BIOS, is a standard defining a firmware interface. The name originated from the Basic Input/Output System. When turning on a PC, before the OS is booted the computer gives sthe user a few seconds to enter the BIOS, usually by typing "F12" or "DEL". Inside the BIOS the user can make change motherboard / CPU / RAM settings.').
term(5,'CMOS','Complementary metal-oxide semiconductor, or CMOS, typically refers to a battery-powered memory chip in your computer that stores startup information. The basic input/output system (BIOS) uses this information when starting your computer. CMOS-related error messages could be caused by a faulty or discharged battery. The battery can become discharged if your computer has been turned off for a very long time.').
term(6,'CPU','A central processing unit (CPU), or processor, is the hardware within a computer that carries out the instructions of a computer program by performing the basic arithmetical, logical, and input/output operations of the system.').
term(7,'DIMM','A DIMM or dual in-line memory module comprises a series of dynamic random-access memory integrated circuits. These modules are mounted on a printed circuit board and designed for use in personal computers, workstations and servers.').
term(8,'DSL','Digital subscriber line (DSL, originally digital subscriber loop) is a family of technologies that provide Internet access by transmitting digital data over the wires of a local telephone network. In telecommunications marketing, the term DSL is widely understood to mean asymmetric digital subscriber line (ADSL), the most commonly installed DSL technology. DSL service is delivered simultaneously with wired telephone service on the same telephone line.').
term(9,'FiOS','Verizon FiOS is a bundled Internet access, telephone, and television service that operates over a fiber-optic communications network. It is offered in some areas of the United States by Verizon Communications and Frontier Communications.').
term(10,'Firmware','A firmware is a permanent software programmed into a read-only memory. Most devices will have the ability to be upgraded or repaired remotely, by downloading new firmware or software.').
term(11,'GPU','A graphics processing unit (GPU), also occasionally called visual processing unit (VPU), is a specialized electronic circuit designed to rapidly manipulate and alter memory to accelerate the creation of images in a frame buffer intended for output to a display. In a computer system there is always a GPU built in a motherboard, yet an external video card can be added to provide a better graphics performance.').
term(12,'Graphics Card','A video card (also called graphics card) is an expansion card which generates a feed of output images to a display (such as a computer monitor) through a VGA or DVI connection. A video card is basically made of a GPU (Graphics Processing Unit) chip which is always included in a motherboard, but also can be added as an expansions card to a PCI-Express port. Most GPUs are manufactured by AMD or Nvidia companies.').
term(13,'HDD','A hard disk drive (HDD) is a data storage device used for storing and retrieving digital information using rapidly rotating disks (platters) coated with magnetic material. An HDD retains its data even when powered off. Data is read in a random-access manner, meaning individual blocks of data can be stored or retrieved in any order rather than sequentially.').
term(14,'LAN','A local area network (LAN) is a computer network that interconnects computers within a limited area such as a home, school, computer laboratory, or office building, using network media.').
term(15,'LED','A light-emitting diode (LED) is a small lightbulb. In computers it is used to tell if a computer system or pice of hardware is working or turned on. Is is found on monitors, printers, motherboards, external drives, etc. usually it is green colored.').
term(16,'MAC address','A media access control address (MAC address) is a unique identifier assigned to network interfaces for communications on the physical network segment. MAC addresses are most often assigned by the manufacturer of a network interface controller (NIC) and are stored in its hardware, such as the read-only memory of the card or some other firmware mechanism.').
term(17,'Northbridge','A northbridge or host bridge is a microchip on some PC motherboards and is connected directly to the CPU (unlike the southbridge) and thus responsible for tasks that require the highest performance. In other words, it is a chip that mainly connects between the CPU and the RAM.').
term(18,'OS','An operating system (OS) is software that manages computer hardware resources and provides common services for computer programs. The operating system is an essential component of the system software in a computer system. Microsoft Windows is the most common OS among PC users.').
term(19,'Optical Drive','In computing, an optical disc drive (ODD) is a disk drive that uses laser light or electromagnetic waves within or near the visible light spectrum as part of the process of reading or writing data to or from optical discs. Some drives can only read from discs, but recent drives are commonly both readers and recorders, also called burners or writers. Compact discs, DVDs, and Blu-ray discs are common types of optical media which can be read and recorded by such drives. Optical drive is the generic name; drives are usually described as "CD" "DVD", or "Blu-ray", followed by "drive", "writer", etc.').
term(20,'PATA','Parallel ATA (PATA), originally AT Attachment (ATA), is an information cable for the connection of storage devices such as hard disks, floppy drives, and optical disc drives in computers.').
term(21,'PCI Express','PCI Express (Peripheral Component Interconnect Express), officially abbreviated as PCIe, is a high-speed serial computer expansion bus. On motherboards, PCI Express is the name for the graphics card port.').
term(22,'POST','Power-on self-test (POST) is a process performed by firmware or software routines immediately after many digital electronic devices are powered on. Later BIOSes used a sequence of beeps from the motherboard-attached loudspeaker (if present and working) to signal error codes.').
term(23,'PSU','A power supply unit (PSU) converts AC to low-voltage regulated power for the different parts of a computer. Is has a boxy shape and it in connected directly to an AC outlit with a power cable, then it has wires coming out of the other side that will split different voltages to the different parts of the motherboard. Modern personal computers universally use a switched-mode power supply. Some power supplies have a manual selector for input voltage, while others automatically adapt to the supply voltage. The output can be found on the label of the power supply.').
term(24,'RAM','Random-access memory (RAM) is a form of computer data storage. A random-access memory device allows data items to be read and written in roughly the same amount of time regardless of the order in which data items are accessed. The two main forms of modern RAM are static RAM (SRAM), dynamic RAM (DRAM). In SRAM, a bit of data is stored using the state of a flip-flop. This form of RAM is more expensive to produce, but is generally faster and requires less power than DRAM and, in modern computers, is often used as cache memory for the CPU.').
term(25,'SATA','Serial ATA (SATA) is a computer bus interface that connects host bus adapters to mass storage devices such as hard disk drives and optical drives. Serial ATA replaces the older AT Attachment standard (later referred to as Parallel ATA or PATA), offering several advantages over the older interface: reduced cable size and cost (seven conductors instead of 40 or 80), native hot swapping, faster data transfer through higher signalling rates, and more efficient transfer through an (optional) I/O queuing protocol.').
term(26,'SLI','Scalable Link Interface (SLI) is a brand name for a multi-GPU technology developed by Nvidia for linking two or more video cards together to produce a single output. SLI is an application of parallel processing for computer graphics, meant to increase the processing power available for graphics.').
term(27,'SMART Error','S.M.A.R.T. (Self-Monitoring, Analysis and Reporting Technology; often written as SMART) is a monitoring system for computer hard disk drives (HDDs) and solid-state drives (SSDs) to detect and report on various indicators of reliability, in the hope of anticipating failures. When a failure is anticipated by S.M.A.R.T., the user may choose to replace the drive to avoid unexpected outage and data loss. The manufacturer may be able to use the S.M.A.R.T. data to discover where faults lie and prevent them from recurring in future drive designs.').
term(28,'Southbridge','The southbridge is one of the two chips in the core logic chipset on a personal computer (PC) motherboard, the other being the northbridge. The southbridge is not directly connected to the CPU, but is connected to the northbridge which is. The southbridge is mainly making connections between the graphics chipset and PCI Express ports to the rest of the sections of the motherboard.').
term(29,'SSD','A solid-state drive (SSD) is a data storage device using integrated circuit assemblies as memory to store data persistently. SSD technology uses electronic interfaces compatible with traditional block input/output (I/O) hard disk drives, thus permitting simple replacement in common applications. Also, new I/O interfaces like SATA Express are created to keep up with speed advancements in SSD technology.').
term(30,'System','The term "System" is usually used as a short for "Computer System" - A complete, working computer. Computer systems will include the computer along with any software and peripheral devices that are necessary to make the computer function. Every computer system, for example, requires an operating system.').
term(31,'Video Cable','Today there are several different video cables in wide use, depending on the generation of technology. The oldest of these supports up to 15 conductors (3 rows of 5 pins each in the connector) for analog video signals, and has been in use since the early 1990s. The modern DVI (Digital Video Interface) cables come in several varieties, with up to 24 contacts for digital transmission and an optional 5 contacts to support older analog signals. The HDMI (High Definition Multimedia Interface) uses 19 or 29 conductors in one of five connector types which support miniature video devices and cameras as well as displays. HDMI is backwards compatible to DVI, so you can buy HDMI to DVI or DVI to HDMI adapters.').