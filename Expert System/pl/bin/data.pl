%data.pl

              %DATA BASE%
 
%edge(_origin,_value,_destination).

%PSU {a}
edge(a1,yes,a2).
edge(a2,no,b4).
edge(a2,yes,a4).
edge(a4,yes,a5).
edge(a4,no,a6).
edge(a6,yes,a7).
edge(a6,no,a8).
edge(a8,yes,c2).
edge(a8,no,a10).
edge(a10,yes,a11).
edge(a10,no,a12).
edge(a12,yes,a13).
edge(a12,no,a14).
edge(a14,no,a15).
edge(a14,yes,d1).
edge(a1,no,a17).
edge(a17,no,a18).
edge(a17,yes,a19).
edge(a19,no,a20).
edge(a19,yes,a21).
edge(a21,no,a22).
edge(a21,yes,a23).
edge(a23,yes,a24).
edge(a23,no,a25).
edge(a25,no,a26).
edge(a25,yes,a27).
edge(a27,no,a28).
edge(a28,no,a29).
edge(a29,yes,a31).
edge(a29,no,a30).
edge(a28,yes,a30).
edge(a27,yes,a31).
edge(a31,yes,a32).
edge(a31,no,a33).
edge(a33,no,a32).
edge(a33,yes,a35).



%Video & Display {b}
edge(b1,no,a17).
edge(b1,yes,b3).
edge(b3,no,b4).
edge(b3,yes,b5).
edge(b4,no,b6).
edge(b4,yes,b7).
edge(b5,yes,b8).
edge(b5,no,b9).
edge(b7,yes,b10).
edge(b7,no,b11).
edge(b9,yes,b12).
edge(b9,no,b13).
edge(b11,no,b12).
edge(b11,yes,b14).
edge(b12,no,b15).
edge(b12,yes,b16).
edge(b13,yes,b17).
edge(b13,no,b18).
edge(b14,yes,b19).
edge(b14,no,b20).
edge(b16,no,b21).
edge(b16,yes,b22).
edge(b21,no,b23).
edge(b21,yes,b24).
edge(b18,yes,b24).
edge(b18,no,b25).
edge(b19,no,b26).
edge(b19,yes,c1).
edge(b25,yes,b28).
edge(b25,no,b29).
edge(b24,yes,b30).
edge(b24,no,b31).
edge(b31,yes,b29).
edge(b31,no,c1).
edge(b30,no,b31).
edge(b30,yes,b33).


%Motherboard {c}
edge(c1,yes,c2).
edge(c1,no,c3).
edge(c2,no,c8).
edge(c2,yes,c5).
edge(c3,no,a17).
edge(c3,yes,c7).
edge(c5,yes,c8).
edge(c5,no,c9).
edge(c7,no,b4).
edge(c7,yes,c11).
edge(c8,yes,c12).
edge(c8,no,c13).
edge(c11,yes,c14).
edge(c11,no,c15).
edge(c15,no,c16).
edge(c15,yes,c17).
edge(c17,no,c18).
edge(c17,yes,c13).
edge(c12,no,c19).
edge(c12,yes,c20).
edge(c13,yes,c21).
edge(c13,no,c22).
edge(c22,yes,c23).
edge(c22,no,c24).
edge(c20,no,c25).
edge(c20,yes,c26).
edge(c26,no,c27).
edge(c26,yes,c28).
edge(c28,no,d1).
edge(c28,yes,c30).
edge(c23,yes,c31).
edge(c23,no,c32).
edge(c32,no,c33).
edge(c32,yes,c34).
edge(c34,yes,c35).
edge(c34,no,c36).
edge(c36,yes,c37).
edge(c36,no,c38).


%Hard Disk {d}
edge(d1,no,d2).
edge(d1,yes,d3).
edge(d3,yes,d4).
edge(d3,no,d5).
edge(d2,yes,d6).
edge(d2,no,d7).
edge(d5,yes,e1).
edge(d5,no,d9).
edge(d6,yes,d10).
edge(d6,no,d11).
edge(d7,yes,d10).
edge(d7,no,d12).
edge(d9,yes,d13).
edge(d9,no,d14).
edge(d10,yes,d15).
edge(d10,no,d16).
edge(d15,yes,d17).
edge(d15,no,d18).
edge(d18,yes,d19).
edge(d18,no,d20).
edge(d13,no,d21).
edge(d13,yes,d22).
edge(d14,yes,d23).
edge(d14,no,d24).
edge(d24,yes,d25).
edge(d24,no,d26).
edge(d26,yes,d22).
edge(d26,no,d27).
edge(d22,yes,d28).
edge(d22,no,d29).
edge(d16,no,d30).
edge(d16,yes,d31).
edge(d30,yes,d31).
edge(d30,no,d32).
edge(d31,no,d33).
edge(d31,yes,d34).
edge(d34,yes,d35).
edge(d34,no,d36).


%CD / DVD {e}
edge(e1,no,e2).
edge(e1,yes,e3).
edge(e2,no,d1).
edge(e2,yes,e5).
edge(e5,yes,e6).
edge(e5,no,e7).
edge(e7,yes,e8).
edge(e7,no,e9).
edge(e3,yes,e10).
edge(e3,no,e11).
edge(e11,yes,e12).
edge(e11,no,e13).
edge(e13,no,e14).
edge(e13,yes,e15).
edge(e15,no,e16).
edge(e15,yes,e17).
edge(e17,no,e18).
edge(e17,yes,e19).
edge(e19,yes,e20).
edge(e19,no,e21).
edge(e14,yes,e22).
edge(e14,no,e23).
edge(e23,yes,e24).
edge(e23,no,e28).
edge(e25,yes,e26).
edge(e28,yes,e29).
edge(e28,no,e30).
edge(e30,no,e31).
edge(e30,yes,e32).
edge(e32,yes,e33).
edge(e32,no,e34).
edge(e33,no,e35).
edge(e33,yes,e36).
edge(e34,yes,e37).
edge(e34,no,e38).


%Sound {f}
edge(f1,yes,c1).
edge(f1,no,f3).
edge(f3,no,f4).
edge(f3,yes,f5).
edge(f5,yes,f6).
edge(f5,no,f7).
edge(f7,no,f8).
edge(f7,yes,f9).
edge(f9,no,f10).
edge(f9,yes,f11).
edge(f11,yes,f12).
edge(f11,no,f13).
edge(f13,yes,f14).
edge(f13,no,f15).
edge(f15,yes,f16).
edge(f15,no,f17).
edge(f17,no,f18).
edge(f17,yes,f19).
edge(f19,yes,f20).
edge(f19,no,f21).
edge(f14,yes,f22).
edge(f14,no,f23).
edge(f23,no,f24).
edge(f23,yes,f25).
edge(f25,no,f26).
edge(f25,yes,f27).
edge(f27,yes,e17).
edge(f27,no,f29).



%vertice_data(_vertice,_name,_explanation).

%PSU 
vertice_data(a1,'Can the system turn on?','The first step in the troubleshooting process is simply determining if the power supply is coming on. You can usually hear the mechanical components in PCs that make rotational noise when they are powered up. Noise makers include the hard drive, as its electric motor spins up the platters, and plenty of fan noise is normal for PCs without PWM (Pulse Width Modulation) fans. Your PC should also give a single beep if it passes its internal start-up diagnostic, and there are always a status LED to tell you if the system is on, though some home PC builders do not bother connecting them. If your hearing is not good, you can check to see if the power supply fan is creating a breeze. Monitors are powered independently, so unless you are looking at a notebook PC, a live screen does not indicate a working power supply.').
vertice_data(a2,'Is the screen displaying anything?','If your computer has a display connected, can you get a live screen, whether it is a simple text message or a colorful splash screen? If the display shows a message like "No video signal detected", that is the monitor telling you the video port is not communicating, so you should follow the "No" path for this decision. Sometimes a CRT or older LCD may show a multiplicity of images or endless scrolling, which means the video adapter is alive and trying to transmit an image but the monitor can not interpret the signals. This does not happen as often with modern LCDs or expensive CRTs that can match a large range of inputs for higher screen resolutions set in Windows. If you are using a high definition TV for your primary display, use a standard monitor for troubleshooting until you eliminate the power supply as an issue.').
vertice_data(a4,'Did you put together the hardware in the computer?','Newer components like quad core processors and dual PCI Express video adapters have doubled the power requirements of typical gaming PCs. An entry level ATX power supply for a PCI Express gaming PC these days is 600W, and power supplies ranging from 750W to 1000W are no longer unusual. The primary culprits are multi-core CPUs that can consume anywhere from 10W to 50W or more per core, for a total CPU consumption as high as 200W in a single processor system. Meanwhile, PCI Express graphics cards for gaming can pull as much as 200 Watts by themselves, or double that in a dual card configuration. A quick search online will help you  determine your power supply requirement based on the hardware installed.').
vertice_data(a5,'Check power requirements compared to rating.','').
vertice_data(a6,'Does the computer boot only from the second time you are turning it on?','If the power comes on but the screen never goes live, try switching back off again and retrying. The switch programming may require you to hold the power button in for a few seconds before the power supply shuts down again. If it refuses to power down, check if there is an override switch on the back of the supply. Otherwise you can turn off your power strip, if you are using one, or just pull the plug. If the PC gets through boot and lights up the screen after a second or third try, it is likely due to miscommunication between the motherboard and power supply around the power_good signal.').
vertice_data(a7,'Replace the power supply.','').
vertice_data(a8,'Do you hear more than one beep from the computer when you turn it on?','Beep codes are reported out by the motherboard BIOS diagnostics at power up. A single beep means the POST (Power On Self Test) test was successful and the CPU, memory and video adapter are all reporting present and accounted for. Any longer strings of beeps are usually due to a hardware failure (or something pressing down a key on the keyboard) and the beep codes depend on the manufacturer. Long strings of slow beeps are usually related to a bad memory module, and repeating strings of 3 or 9 beeps often indicate video card failure. In either of these cases, shut down, unplug, and try reseating either the RAM or the video adapter, though you should do both.').
vertice_data(a10,'Did you recently install new hardware to your computer?','New hardware can some time be harmful for the system. It can cause unexpected reboots, bluscreens or prevent the system from booting. Check if any sort of new hardware was installed on the computer by you or another user.').
vertice_data(a11,'Remove latest hardware and retry the boot.','If you have done any work in the case immediately before the boot failure, undo it, even if it means swapping the old component back in. If a new component prevents the power supply from attaining stability due to excessive current draw, it should cause the power supply to withhold the power_good signal, preventing the motherboard from attempting to boot. The boot failure may be unrelated to the new component, but you could have dislodged a connector, left a loose screw rolling around, or unseated an adapter while working in the case.').
vertice_data(a12,'Is the fan of the PSU making loud noise?','A noisy power supply fan can usually be cleaned or replaced easily enough, though you have to watch out for the big capacitors in the power supply when you open it up, even after it is unplugged. Case fans can also fail and make noise, as can the heat sink fans on the CPU, video adapter, or motherboard chipset. And make sure the fan noise is not due to something stuck in the grille and hitting the fan blades.').
vertice_data(a13,'Clean all the dust from the computer.','').
vertice_data(a14,'Do you know that the problem is an HDD or OS error?','It is possible that the issue is not in the power supply but it is an operating system error or hard drive failure. Are you awear that the problem may be one of those?').
vertice_data(a15,'Test the output of the power supply.','Test the output of the PSU with a DVM (Digital Volt Meter). Unstable voltages and AC ripple on the DC are real ghosts in the machine, and can mimic all sorts of other problems. If the is a problem of this sort then the PSU is malfunctioning and it needs to be replaced.').
vertice_data(a17,'Is the AC of the power outlet at normal?','If power is not coming on, double check that the cord is plugged into a live socket and firmly seated in the back of the power supply. You do not need a DVM (Digital Volt Meter) to check your power outlet. Unplug the power supply cord from the outlet and plug a working lamp into the very same socket to test it. If nothing is wrong with the outlet then check if the power is going through the power cable, it also might not be sitting well so you sould unplug and plug it back to the PSU. If that did not solve the problem you must replug the power cable or replace it.').
vertice_data(a18,'Connect the PC to a working outlet.','').
vertice_data(a19,'Does the PSU support an universal input?','Newer, high quality power supplies are generally termed "universal input" or "full range" and will work on any AC voltage from 90V to 240V at 50 Hz or 60 Hz outlet. Older power supplies shipped with a manual switch to select the correct voltage (110V/ 220V).').
vertice_data(a20,'Select proper PSU voltage.','This small red slide switch is located on the back of the power supply, usually between the power cord and the on/off override. You should always unplug the power supply cord before changing the voltage because modern ATX power supplies are always live when plugged in.').
vertice_data(a21,'Is the front power switch connected properly to the motherboard?','One reason the PC will not turn on when you press the switch is if the switch lead has separated from the motherboard. This lead is usually labeled PW-ON or PW and it reaches from the front the PC case to a small block of metallic pins for case connections to the motherboard. It is not at all uncommon to encounter this problem if you have done any work inside the case.').
vertice_data(a22,'Make sure that the front power switch is connected to the proper point.','').
vertice_data(a23,'Is the power switch broken?','Check that the power switch is really working by using a meter on the continuity setting, or just check for a short when the switch is closed. Is it broken?').
vertice_data(a24,'Replace the power switch.','').
vertice_data(a25,'Is the PSU connections connected to the motherboard correctly?','You must check if all the connections are sitting well and that they are properly fitting. Modern motherboards require multiple connections from the power supply, starting with the main 24 pin ATX connector that replaced the older 20 pin connector in most designs. Power hungry CPUs and chipsets have led to a variety of supplemental connectors, including a 4 pin or 8 pin ATX 12V supply on many systems, and multiple 6 pin PCIe connectors for serious graphics cards.').
vertice_data(a26,'Reconnect all of the motherboard power connections.','With the power supply unplugged, make sure all motherboard connectors are properly seated and latched by removing them and reattaching. They usually do not make any noise on releasing, but you should get a satisfying click when you remake the connection.').
vertice_data(a27,'Can you forced the hard drive to spin?','Unplug the power supply from the wall, and then disconnect all of the power supply leads from the motherboard, the video adapter, any auxiliary fans, the DVD. The only component that should be connected to the power supply when you are done is the hard drive. If there is more than one hard drive installed, you can leave those power leads connected as well. In the big connector that connects to the motherboard lead you need to connect between the green wire and one of the blak wires (which are grounds) in order to close the circuit, then plug the power supply to an outlet.').
vertice_data(a28,'Are you sure that you have conducted the last test on a working hard drive?','If you can not get power to come on and the hard drive to spin up when bypassing the motherboard and forcing power on, either the ATX power supply has failed or the hard drive does not present a sufficient electrical load for the switching power supply to operate.').
vertice_data(a29,'Conduct the test again with a knowen working hard drive. Did it spin?','The previous test only gives a decisive result if you performed it with a good hard drive. You can either test your existing hard drive in another PC or in an external USB case attached to a laptop, or you can obtain a known good working hard drive from another PC.').
vertice_data(a30,'The PSU is defective and you need to replace it.','').
vertice_data(a31,'Are the adapters on the motherboard are malfunctioning?','Since the PC powered up with nothing but the hard drive connected, the power supply is probably good and there is either an excessive current draw or a short somewhere on the motherboard or the other attached components. With the power supply unplugged, reconnect all of the power leads you removed in the previous step, then try powering up again just to make sure a bad connection was not your problem all along.').
vertice_data(a32,'Replace the motherboard.','Normally, a short circuit will result in a burnt smell and a ruined motherboard, sometimes damaging any of the attached components (memory, CPU, adapters) as well. In many instances, you will be able to figure out which component is ruined by the presence of burn marks or a strong odor of smoke coming from the component, though when it happens in a closed case, the smoky smell can stick to everything. If you can not locate a failed component by visual inspection, you need to have access to a test-bed system (an inexpensive but completely functioning PC for testing questionable parts). Do not test parts that may be fried in a good system, because some types of failures will cause damage to the next machine.').
vertice_data(a33,'Can you turn on the motherboard outside of the PC case?','Running the motherboard without a case is a common technique used by technicians to eliminate any weird grounding or unintended shorting issues or mechanical stresses. It also makes it much easier to swap the CPU if thats required. Do the bench testing on top of a cardboard box, with a static free bag or foam between the bottom of the motherboard and the cardboard. If your motherboard powers up on the bench with the same power supply that you used in the case, you have a geometry problem.').
vertice_data(a35,'Replace the PC case.','Try swapping the power supply as a final test. The power supply may be defective or not powerful enough for this system and it needs to be replaced.').


%Video & Display 
vertice_data(b1,'Can the system turn on?','Is the system power coming on? Can you hear fans turning and drive motors spinning up, see little lights on the front of the CPU case, hear any beeps?').
vertice_data(b3,'Is the screen displaying anything?','This does not have to be your Windows desktop appearing. Text or scrolling messages count for "anything" in this step.').
vertice_data(b4,'Is the monitor LED turned On?','All modern monitors have some form of status light, usually right next to or inside the power button, to tell you when they are powered on. Even old CRT monitors usually have a status LED that lights up when the monitor is powered and may blink or change color depending on whether there is an active video card detected. Large CRTs generally make a noise when they power on, a combination of static cling and something. Both types of monitors, LCDs and CRTs, normally utilize a detachable power cord, so make sure the male end is fully seated in the power cable of the monitor. If you still not getting any signs of life from the monitor, try a different power outlet.').
vertice_data(b5,'Is "No Power" displayed on the screen?','If the only message your monitor displays is something that includes the word "power," it is probably informing you that the video adapter in the PC requires additional power to operate. The video card is working, it is generating the message, but the motherboard slot does not supply enough power for it to function normally. Both the current crop of PCI Express cards and the higher performance AGP graphics cards that preceded PCI Express usually require one or more dedicated leads from the power supply. If you have just built the PC, it means you forgot to connect the power supply lead or did not make the connection properly. If it is a PC you just had open for a different reason, you probably loosened the power cord connection enough to break the circuit. But if the case has not been open since the last time you booted successfully, it is likely the power supply circuit has failed or there is a hardware failure on the video card.').
vertice_data(b6,'Replace the power cable of the monitor.','Make sure that the power cable is fully seated in the monitor socket and that it is not defective.').
vertice_data(b7,'Are you using two or more monitors?','Multiple monitor setups are becoming increasingly popular with power users who either want to increase the size of their desktop for a larger work area, or display different windows on different screens. In multiple monitor setups, one of the video outputs is the primary. This is true whether you have multiple video outputs from a single graphics adapter or multiple video cards as well. When troubleshooting a broken situation, concentrate on getting the primary monitor, the one that is active during the boot process, up and running.').
vertice_data(b8,'Plug power wires from a PSU to the video card.','').
vertice_data(b9,'Is "No Signal" displayed on the screen?','Most new monitors will display a text message like "No signal source", or "Attach video signal", if thet are working and powered on. These messages should appear even if the PC or video adapter is broken. It offers definitive proof that the monitor or LCD display is alive and most likely capable of displaying an image if a video signal was present. Unfortunately, the message only proves something if it appears, since older monitors and cheaper models may not display anything at all, and some video adapter or boot failures may result in the display of a black (blank) screen.').
vertice_data(b10,'Turn on each monitor individually.','').
vertice_data(b11,'Do you hear a string of beeps when turning on the computer?','Healthy PCs should only beep once when they are turned on and pass their Power On Self Test (POST) routine. While different BIOS manufacturers use different beep codes to identify failures, a repeating string of beeps (three or nine in a row) is a common indicator of video card failure. But do not get confused by a stream of beeps which can be caused by something leaning on the keyboard and holding down a key at boot.').
vertice_data(b12,'Is the video cable sitting well in the monitor?','Today there are several different video cables in wide use, whatever you are using, the connector must be seated squarely on (or in) the video port on the back of the system. The hold-down screws on either side of the connectors that have them should be screwed in all the way, but not made up too tight. The same is true for the connector on the monitor or HDTV end of the cable. If you have recently moved the system or changed any components which required you to undo one of the connections, remove that end and inspect the connector and port for damage.').
vertice_data(b13,'Is the motherboard GPU enabled?','Do you keep seeing the GPU (Graphics Processor Unit) from the motherboard announcing itself when the PC powers on, even though you have replaced it with an add-in video card, whether PCI Express, or an older AGP or plain PCI adapter?').
vertice_data(b14,'Have you checked if the video card is sitting well?','Check whether or not the video adapter is properly seated, but first unplug the power supply before removing any adapter installed on the motherboard. If you have more than one video adapter installed, remove the secondary video adapter, and if you still do not get a live screen, swap the secondary for the primary. Likewise, if you have an add-in video adapter installed as a performance upgrade to built-in motherboard video, remove it and try getting a live screen with the built-in GPU, tou might have to change a jumper or switch on the motherboard to reenable it.').
vertice_data(b15,'Check both ends of video cable. Replug or replace it.','Examine the full length of the video cable for evidence of a sharp indentation in the outer sheathing, which would indicate the cable was pinched and may be damaged. Male video connectors are all subject to pin damage, although the HDMI designs deploy the pins as edge connectors. DVI connector pins are beefier than the older analog VGA connector pins, and the analog compatibility section on one end of the DVI connector makes it nearly impossible to get confused and try to force the connector on the wrong way.').
vertice_data(b16,'Are there any broken pins on the Video cable?','Are there any broken pins on the Video cable?').
vertice_data(b17,'Disable the on-board GPU with motherboard jumper, switch, or BIOS setting.',' You need to disable the onboard GPU, either by changing the video setting in CMOS Setup, or with a jumper or dip switch on the motherboard. Sometimes, the on-board GPU will be set to "On" or "Enabled" in CMOS, when you need it to be "Off" or "Disabled". If it is set to Auto for automatic or autodetect, change it to "Off" or "Disabled".').
vertice_data(b18,'Is the computer freezing on BIOS screen?','Does the system get as far as showing the BIOS screen and then locking up? Thw BIOS is the the text information or brand-name graphics that appear on the screen in the initial boot stages from the video adapter or motherboard. A system that freezes up at this point is rarely suffering from a video failure, though a conflict between the video card and another installed adapter is still possible.').
vertice_data(b19,'Are the RAM sticks sitting well?','If reseating the card does not clear up the beeps, it is probably a failed video adapter or bad RAM on the motherboard. You can power down and try reseating the RAM at this point. There used to be beep codes for all sorts of component failures, but most of those components have long since been integrated into the motherboard chipset and can not be replaced if they fail. If reseating the PC memory on the motherboard does not clear up the problem, you can further troubleshoot the possibility that the system RAM is the problem by testing it in another PC or by running with the minimum number of modules. Depending on the motherboard and the type of DIMM installed (single sided, double sided), the PC may have multiple DIMMs installed and only require a single DIMM in Bank 0 for boot. DIMM sockets are labeled with text printed on the motherboard or color coded to show the banks. Motherboards with multiple banks 
operating in dual channel or triple channel mode require a handful of exactly matched DIMMs if fully populated. In the "ganged" designs, the availability of two 64 bit memory modules on a single bus meant a single processor has access to a 128 bit wide memory bus. In current "unganged" implementations, multi-core (and multi-threading) processors can address 64 bit wide memory at the same time, a way of adding a second memory bus to the system.').

vertice_data(b20,'Reseat the video adapter.','When reseating a video adapter, always remove it completely from the slot, making sure to release the hold-down latch if it exists, then reseat the adapter by pushing down evenly at the front and back on the top edge.').
vertice_data(b21,'Have you tested the monitor?','').
vertice_data(b22,'Replace or repair the video cable connector.','').
vertice_data(b23,'Test monitor on good PC or laptop.','Test the monitor on another PC or laptop. If you use a laptop to test the monitor and it does not automatically detect an external monitor when booting, use the "F" function keys along the top of the keyboard to tell the laptop to shift to the external display. If the monitor does not work on a known good computer, the problem is with the monitor, not your PC. If a faint image is detectable on an LCD screen when you shine a bright light at it on an angle, the problem is with the backlight or the inverter that powers the backlight. A loud buzz coming from an LCD monitor is often the inverter circuit failing.').
vertice_data(b24,'Are you using a video adapter?','Are you running a dual adapter setup for increased video performance, such as Nvidia SLI or AMD CrossFire? Unplug the power supply and try removing one of the adapters before powering up again. Note that older motherboards designed for SLI and CrossFire may have shipped with a "PCIe switch" or "PCIe terminator" which was installed in the second x16 slot if only one video adapter was used, allowing the single adapter to utilize the full x16 lanes. If the screen remains frozen or dark at boot, try swapping it with the other adapter. Both AMD and Nvidia offer interactive troubleshooting databases for their high performance video adapters through their websites.').
vertice_data(b25,'Is the fan of the video card noisy?','Without an operating cooling fan the GPU warms up and throttles its own performance to try to reduce heat generation. If the cooling fan is making noise it might mean that it is damaged.').
vertice_data(b26,'Reseat RAM on motherboard, test in another PC if possible.','').
vertice_data(b28,'Replace the fan.','After finding a replacement that fits, replace the entire active heatsink and the fan.').
vertice_data(b29,'Install a new video card.','').
vertice_data(b30,'Is the monitor showing display only when connected to the motherboard?','Do you only get a live screen, or at least move past the BIOS screen, when all the other adapters are removed? If so, the problem is either a bad adapter preventing proper operation of the bus or an adapter conflicting with the video card. In either case, you can reinstall the adapters one at a time, powering up after each one, troubleshooting the problem by process of elimination.').
vertice_data(b31,'Is the monitor showing display only with a new video card?','One reason for a video adapter to not work is if it is not compatible with the motherboard. If you have an older motherboard, it could be that your x16 PCIe 3.0 or even PCIe 2.1 adapter is not actually supported by the motherboard slot. PCI Express cards are generally backwards compatible, although they transfer data slower over the same number of lanes.').
vertice_data(b33,'Remove all video adapters from the system and use only the GPU of the motherboard.','If the system does not show display with any video card then it is a defective PCI port you are encountering. In this case the computer will work only with the on-board GPU.').


%Motherboard 
vertice_data(c1,'Is the screen displaying anything?','If all you get is a text message telling you that the monitor can not detect a video signal, it does not count, since the monitor can display that message with no computer present.').
vertice_data(c2,'Does the display freeze on boot?','Does the screen light up and the PC power on, only to freeze when the operating system begins to load? Some of the reasons a PC will freeze at the beginning of the boot process are different from those that cause freezes during normal operations.').
vertice_data(c3,'Have you performed power diagnostics?','The power supply diagnostics will only send you back here if you are getting a definitive sign of life, in the form of a beep.').
vertice_data(c5,'Does the display freeze when booting safe mode?','Does the system freeze when you strip it down to the minimum configuration required to start the boot process? This consists of the power supply, motherboard, CPU, the minimum required RAM, and a GPU (this can be an add-in video adapter, a video adapter integrated on the motherboard, or one of the newer CPU/GPU on a single chip solutions). You can also leave the primary hard drive connected for the first try, though powering up without a hard drive should result in a missing boot device error message rather than a frozen BIOS screen on a healthy PC.').
vertice_data(c7,'Have you performed video diagnostics?','If you havent performed the Video Failure diagnostics for a dead screen yet, do so now, and dont ignore the obvious steps, like checking the power cord and the outlet. You may be tempted to skip forward if you hear beeps, but theres no reason to assume at this point that beeps and the dead screen are the same problem.').
vertice_data(c8,'Can you access the BIOS?','Are you able to access the BIOS (CMOS Setup) by pressing the hot key(s)? The most common hot keys are "F2" or "Del", but there can be others in older PCs, including multiple keys held down simultaneously, including the CTRL and ALT keys. Most BIOS will normally flash the CMOS Setup hotkey(s) as a text message on the screen at the beginning of the boot process, but some major manufacturers suppressed this to discourage owners from altering the settings and creating a tech support headache. You can always find the key combination through a patient Internet search with the brand and model of your PC.').
vertice_data(c9,'Restore one adapter or component at a time, unplugging or shutting off power strip each time, until culprit is detected.','').
vertice_data(c11,'Have you just upgraded the CPU or RAM?','Any components you have upgraded may not match to your motherboard.').
vertice_data(c12,'Are CMOS settings set as default?','If you are not using the default CMOS settings, try restoring the factory settings. Even if you do not remember ever changing any advanced settings for the chipset, memory timing or CPU, just restore the defaults at this point. You can usually restore these from a major CMOS Setup menu item like "Restore Default Settings" or "BIOS Default Settings." The default settings usually put everything on autodetect and use the recommended timing for the RAM. This means if youre overclocking, stop it, at least until you get the system running again. It doesnt matter whether or not overclocking the exact same CPU or RAM in a friends system worked without a hitch, youre exceeding the manufacturers recommendations so its a gamble.').
vertice_data(c13,'Have you changed any BIOS settings?','Did you change the BIOS settings (CMOS Setup) or flash the BIOS (replace it with a newer BIOS version) immediately before the failure occurred?').
vertice_data(c14,'Undo the upgrade.','If you have just upgraded the hardware, change back to old hardware. Check the motherboard manufacturer website to make sure that the exact CPU and memory modules (brand and specifications) are listed as compatible with the motherboard.').
vertice_data(c15,'Did you reseat the RAM during this diagnosis?','Failure to install the memory modules properly is a frequently encountered problem. Modern motherboards all use some form of DIMM (Dual Inline Memory Modules). All DIMM sockets are equipped with a locking lever on either end, and these levers must be opened (lowered) before inserting the DIMM, and should rise up and snap closed of their own accord as it seats. It can take quite a bit of force to seat a DIMM properly, but if you do not get it lined up first, you are going to damage the DIMM or the socket.').
vertice_data(c16,'Reseat the RAM, minimize number of DIMMs, positive lever lock.','').
vertice_data(c17,'Is the CPU sitting flat?','The CPU version of faulty DIMM insertion is both harder to spot and harder to check. While memory modules can be popped in and out in a second, the massive heatsinks on todays high power processors are secured to the motherboard with strong spring clips that are not designed for frequent operation. Intel has largely dropped putting the pins on the CPU in favor of putting the pins in the socket, the LGA (Land Grid Array) design. AMD still uses PGA (Pin Grid Array) on some CPU packages, LGA on others. It is important that the CPU is sitting well in the socket and that the pins are not boken.').
vertice_data(c18,'Reseat the CPU and the heatsink.','').
vertice_data(c19,'Load defaults from the BIOS, safe save settings.','').
vertice_data(c20,'Are the temperature and supply voltages of the CPU stable?','The BIOS monitors CPU temperature and reports various supply voltages, in some cases using these measurements to determine whether to shut down the PC for thermal overload or voltage instability. These settings can usually be viewed through CMOS Setup, and for future reference, you can access them with 3rd party tools from Windows as well. If your CPU supports DTS (an Internet search will tell you), make sure that the temperature you see displayed is based on DTS and not on a thermocouple that may or may not have good thermal contact with the CPU.').
vertice_data(c21,'Remove motherboard battery, wait one hour and then return it.','If you made changes at the BIOS, or if you were overclocking, your most recent setting are probably preventing the boot. If you can not access the BIOS to restart the settings, the only solution is to clear the settings so that the BIOS will insert the default values for safe operation on the next power up. To do so you need to take out the battery of the motherboard, it is coin shaped, and insert it back after at least one hour.').
vertice_data(c22,'Is the fan on the CPU heatsink active?','A dead CPU is another reason for a system to fail. All modern CPUs require a heatsink, and these are active heatsinks, with a fan on top. You may encounter a heatsink without a fan in an older PCs, but those were much less powerful CPUs. Check the action on all motherboard mounted heatsink fans. There may be a heatsink fan on the chipset (the Northbridge handles communications between the memory and graphics systems and the CPU so it can run very hot) or a motherboard integrated GPU.').
vertice_data(c23,'Do you hear more than one beep when turning on the computer?','You should hear a single short beep, not a long, continual beep that can mean that the required auxiliary power is not connected to a video adapter. Note that very old PCs used the case speaker, rather than an onboard piezoelectric for beep codes, so you will not hear anything unless the case speaker is attached to the four pin speaker block (the outside two pins were used) on the motherboard.').
vertice_data(c24,'Check fan power point, it may not come on instantly at boot.','The cooling fan can be broken or it just does not get power from the power supply. Check if the fan is connected good enough to the motherboard, if it does not work at that case, replace it.').
vertice_data(c25,'Replace the CPU heatsink if it is not certified. If CPU voltage is not stable, correct it at the BIOS settings.','').
vertice_data(c26,'Is the RAM model certified to work with the motherboard?','If the DIMM does not matche the keys in the DIMM sockets, the memory would work. The high performance demanded from todays memory requires increasingly exquisite timing that is not always achieved by adherence to a general specification. Check the motherboard manufacturer website to see if the RAM you are using is explicitly listed as being tested with the motherboard and CPU.').
vertice_data(c27,'Check the motherboard manufacturer website, by that swap the RAM.','').
vertice_data(c28,'Can the system boot from an optical drive?','Does the system boot from a CD or DVD, or from a bootable memory stick? In order to run this test, you may have to enter CMOS Setup and change the boot order to set the CD, DVD or USB memory stick as the first boot device. Otherwise, the BIOS will continue trying to boot from a corrupted hard drive (if that is the problem) and the system will freeze rather than going on to try booting from other devices.').
vertice_data(c30,'Replace the hard drive and start over.','It looks like there is a problem with the hard drive and the system can not boot from it. However the hard drive may not be lost, if you replace the hard drive with a new one and install an OP on it and then boot, it is possible that you will still have access to your old files on the old drive. The problem may not be in the drive but a damaged OP installed on it.').
vertice_data(c31,'Swap between the DIMM of the RAM.','If you have more than one DIMM installed on a motherboard that only requires one DIMM to boot, try swapping your RAM through the first slot, one DIMM at a time. You can try to clean the DIMM slots with a soft cloth or a can of compressed air, just make sure you are not leaving threads, hairs or dust in the slot when you are done.').
vertice_data(c32,'Are motherboard settings at defult?','Check your motherboard documentation to determine whether there are any jumpers or switch blocks used for operational settings. With the exception of a jumper for clearing CMOS Setup, these are obsolete today (replaced with CMOS Setup settings), but they were still in wide use with early ATX PCs, some of which are still in use today.').
vertice_data(c33,'Restore factory motherboard settings.','').
vertice_data(c34,'Can you turn on the motherboard on bench, outside of the PC case?','Running the motherboard without a case is a common technique used by technicians to eliminate any weird grounding or unintended shorting issues or mechanical stresses. It also makes it much easier to swap the CPU if thats required. Do the bench testing on top of a cardboard box, with a static free bag or foam between the bottom of the motherboard and the cardboard. If your motherboard powers up on the bench with the same power supply that you used in the case, you have a geometry problem.').
vertice_data(c35,'Locate a short in the PC case, or replace it.','If the motherboard can power up on bench then something inside the PC case, a short perhaps, prevents it from powering.').
vertice_data(c36,'Swap the CPU. Is the problem solved now?','If you still have a "no power" situation with the motherboard running out of the case, swap in a known good CPU, not forgetting to install a good heatsink and to connect the fan, even just for a quick test. You can usually find very inexpensive CPUs for sale, removed from PCs with other problems, and you should try the lowest speed CPU (lowest cost) of the family that your motherboard supports. It is another good reason to leave all the motherboard settings on the default "Automatic" setting.').
vertice_data(c37,'The CPU was defective.','').
vertice_data(c38,'Replace the power supply.','Either the motherboard or the power supply is not working well and you have to replace one of them. Test each one on a different system before.').


%Hard Disk 
vertice_data(d1,'Do the BIOS register the hard drive?','Are all installed ATA drives properly identified by the BIOS and displayed on the start-up screen? Any modern PC should be able to identify the drive by model number, brand, capacity, and usually the transfer mode. Some brand name PCs may not display a start-up BIOS registration screen, so you will have to enter CMOS Setup to view the information. If the key stroke required to enter CMOS Setup is not displayed on the screen as the PC begins to boot, you will need to look it up in the documentation or on the Internet. Common keys used to access CMOS Setup at boot are, <DEL>, <F1> and <F2>.').
vertice_data(d2,'Are you using an SSD drive?','While SSDs with ATA interfaces should look like their mechanical counterparts to the BIOS, they have some distinctive characteristics from the troubleshooting standpoint. They do not have motors, read/write heads on a moving arm, or spinning discs. So they do not make any noise and they do not resist twisting like a gyroscope. In case of a failed SSD firmware update, power down your PC completely, remove the cord, and let it sit for an hour, then try powering up and down a few more times to see if the drive will appear in the BIOS.').
vertice_data(d3,'Is a SMART error detected?','Self-Monitoring, Analysis and Reporting Technology (SMART) indicates a problem in a hard drive. Because the metrics defined include 87 different signals, from the spin-up time to the read-write error rate, to the drive temperature and vibrations, it is not fully implemented by every drive manufacturer in the same way.').
vertice_data(d4,'Back up the data and replace- the hard drive.','Is seems that the hard drive is malfunctioning, you need to back up the data and replace it.').
vertice_data(d5,'Is it an optical (CD or DVD) drive not working?','The troubleshooting procedures for ATA interfaced drives that are not recognized by the BIOS are identical, whether they are hard drives, CDs, DVDs, tapes or any other ATA device. If the BIOS registers the installed ATA drives correctly and the drive you are having problems with is a CD or DVD.').
vertice_data(d6,'Is the drive using ATA (PATA or SATA) connector?','Is the SSD drive equipped with a SATA or PATA (IDE) interface? In terms of cabling issues for power and data, and jumpers for addressing, troubleshooting SSD drives when they are interfaced as PATA or SATA drives is the same as for the magnetic drives. But one of the main failure modes for an SSD drive is simply not showing up in the BIOS. The very next time you power down and power up again, the drive might reappear.').
vertice_data(d7,'Does the hard drive spin up when the PC is turned on?','You should hear the hard drive motor spinning up the drive and the gentle clunking sound of the read/write head seeking. A spun up drive resists a slow twisting movement just like a gyroscope. Do not flip it quickly or play with it or you may damage the drive. Just power down, put the drive back in and continue with the diagnostics.').
vertice_data(d9,'Is the SSD drive not working?','The troubleshooting tree branches for failure issues that affect mechanical drives vs. SSD drives. SSD drives will never spin up and spin down in an unending cycle because they do not spin. Mechanical hard drives almost never require firmware updates, primarily because the operational parameters are fixed and there is not much that can be changed.').
vertice_data(d10,'Is the drive using SATA connector at the moment?','SATA and PATA drives feature different connectors for both for power and data, so you can not hook the wrong drive up to the wrong interface. On the SATA drives, the power cable is wider than the data cable, on the older PATA or IDE drives, the data cable is a wide ribbon cable and the power cable is an old fashioned Molex 4 wire connector (also used by some early SATA 1 drives).').
vertice_data(d11,'Update the drivers that are required to activate the external drive.','A non ATA drive may not be automatically recognized by the computer, therefore a driver must run to register it. If the drivers are updated and function while the external drive is still having problems, it is probably defective.').
vertice_data(d12,'Insert another power lead into the drive.','').
vertice_data(d13,'Have you updated the firmware for your SSD drive?','Unlike mechanical hard drives whose operational parameters are fixed, SSD drives sometimes benefit from new programming, but do not do it unless the manufacturer recommends the update. The SSD firmware controls the relatively high burden of housekeeping tasks that the SSD drive must perform independently of the PC, especially wear leveling and other tasks that will extend the life of the drive. Due to somewhat inconsistent operating system support, a firmware upgrade might be necessary after an automatic Windows update, or for compatibility with a particular high performance application.').
vertice_data(d14,'Does the drive cycle up and down?','Try swapping the power lead for a spare or one used by another drive. For older IDE drives, try isolating the drive on its ribbon cable, even if it means temporarily doing without another drive for the sake of troubleshooting. If neither fix helps, try disconnecting the data cable to ensure that the drive is not receiving some flaky power down signal from a bad ATA interface or a crazy power management scheme. If it still cycles up and down, the drive is likely toast. Test the drive in another system or a USB shell before labeling it dead.').
vertice_data(d15,'Is the drive using either SATA2 or SATA3?','The initial interface speed for SATA drives was 150 MB/s, also known as SATA 1. The next generation SATA 2 interface supports 300 MB/s and the current SATA 3 peaks around 600 MB/s. Since the "S" in SATA stands for serial, the specification actually describes a bit rate, 1.5 Gbits/s for SATA 1, 3.0 Gbits/s for SATA 2, and 6.0 Gbits/s for SATA 3, but hard drive transfer rates are traditionally described with the more useful MB/s. If you are replacing an older SATA drive with one from a newer generation and it is not recognized by the BIOS or will not boot reliably, check if the drive has an onboard compatibility jumper that will slow down the interface for it to work properly with a SATA 1 controller designed for a 150 MB/s peak transfer rate, or a SATA 2 controller designed for a 300 MB/s peak transfer rate.').
vertice_data(d16,'Are Master/Slave configurations set properly?','Any time two old IDE drives share a single cable, the computer needs a way to tell them apart. This can be accomplished by using jumpers on the drives to set one to "Master" and the other to "Slave" or through selection by the cable. The Master/Slave setting is set by jumpers, usually on the back end of the drive between the power socket and the IDE connector. The labeling for the jumpers is usually in shorthand, "M" for Master and "S" for Slave. Some older drives include a jumper for "Single" (and spelled out labels) for when the drive is the only drive installed on the ribbon. Since pre-SATA motherboards always supported both a primary and a secondary IDE interface, it is not necessary with a two drive system to hang them both on the same cable. The boot hard drive should always be the Master on the primary IDE interface. If the CD, DVD, or any other IDE drive is to share the same cable, it should be set to Slave.').
vertice_data(d17,'Configure the jumper on the drive to slow down.','').
vertice_data(d18,'Is the data cable connection good?','If the drive powers up but is not recognized by the BIOS, it is possible that the data cable is bad, or not properly seated on either the drive or the motherboard. If the data cable is known to be good (you saw it work in another system), try attaching it to a different SATA port on the motherboard. Some motherboards offer a completely separate set of SATA connectors for RAID arrays (see hard drive performance). If the motherboard BIOS supports AHCI (Advanced Host Controller Interface) you should enable it, otherwise the SATA drive will end up emulating an IDE drive if it works.').
vertice_data(d19,'BIOS on old motherboard fails to detect a SATA drive. Switck to a PATA drive.','').
vertice_data(d20,'Check if the data cable is seated at both ends. Replace the cable if it is bad.','').
vertice_data(d21,'Use a bootable USB drive to install a firmware update.','').
vertice_data(d22,'Does the OS tools recognize the drive?','As long as the partition information is intact, the problem is more often malware or OS corruption than magnetic media or electronics failure. If the drive is loud but working, you should maintain up-to-date backups, but it may last for years. If the drive gets too hot, try repositioning it in the case so it can receive greater air flow, or add a case fan to the front of the case.').
vertice_data(d23,'Swap the power lead, isolate on controller, power management.','').
vertice_data(d24,'Does the drive make little clicking noises?','The soft clicks are caused by the read/write head arm jerking back and forth in a series of seeks as it tries to read data from the platter. It could be that the magnetic coating is damaged, it could be tracking errors, it could be a variety of mechanical failures. Some data recovery technicians report receiving hard drives with randomly tightened cover screws (as a result of people trying to take them apart) which can cause clicking. If you own a quality torque screwdriver, it cannot hurt to start on the lowest torque setting and see if some of the screws turn at low torques while others are tight. Restart the PC a couple times, and if you do get it booted, back up your data, run CHKDSK or ScanDisk, and try downloading a free utility that will let you check the S.M.A.R.T report of the drive.').
vertice_data(d25,'Drive is either can not find the boot sector or suffers surface damage or errors.','').
vertice_data(d26,'Does the BIOS report the transfer mode correctly for older PATA drives?','UDMA must be enabled in CMOS, or set on "Auto," for high speed transfers. You should never see any level of PIO selected for a hard drive, e.g.: "UDMA/100" or "ATA/66". IDE hard drives manufactured after around 1995 require the 80 wire ribbon cable, at least for high speed operation. You can check CMOS Setup to see if there is a manual override to select the higher speed transfers, though the automatic settings should pick it up. Also try isolating the hard drive as the sole device on the primary controller. If you are adding a new hard drive to an older system, it is possible that the old motherboard and BIOS simply do not support the faster transfer, even with the new cable.').
vertice_data(d27,'Change drive transfer mode in CMOS to "Auto".','').
vertice_data(d28,'Replace the drive.','').
vertice_data(d29,'Isolate drive on primary. If Disk Management or FDISK still does not see drive, the MBR may be damaged by a virus.','').
vertice_data(d30,'does the cable select Master/Slave configurations?','Most later PATA drives supported Cable Select (CS) which means the pin 28 connection in the cable will determine which drive is Master and which is Slave. New motherboards and drives ship with 80 wire ribbon cables which support cable select and feature the following color coded connectors: Motherboard IDE Connector - Blue, Slave IDE connector (middle connector on cable) - Grey, Master - Black. Cable Select is also supported by custom 40 wire ribbon cables and older drives found in many brand-name systems. The jumpers on both drives should be set to cable select (CS) if you are not setting one as Master and the other as Slave.').
vertice_data(d31,'Is the ATA cable new?','If the drives still do not register properly, make sure the power cable is seated in the power socket of the drive, which can take a bit of force. The ribbon cable connectors must also be seated all the way into the IDE port on both the drives and the motherboard, or adapter card if you are using a RAID adapter. The most common reason for a cabling failure of this sort is that the connection was partially dislodged when you were working on something else in the case. Try a new ribbon cable. The most common cable failure is right at the connectors, which can break open if the locks fail. The connectors are not soldered to the wires, the circuit is made mechanically with "V" shaped contacts forced through the plastic and digging into the conductors.').
vertice_data(d32,'Select Master/Slave configurations.','').
vertice_data(d33,'Reseat IDE and power cables, Replace IDE cables.','').
vertice_data(d34,'Can the cable only go one way?','On IDE drives, pin 1 is traditionally located next to the power socket, but it is not a 100% rule for all time. If the motherboard connector is not boxed and keyed, it is possible to force the cable on backwards or miss an entire row of pins. The pin 1 location on the motherboard is normally marked with an arrow, a dot, a white square, anything to show one end of the interface as different from the other. If the motherboard will not register any drive you attach, even on new cables, and if those drives are spinning up, it indicates that either the IDE controller is bad or all the drives you have tried are bad.').
vertice_data(d35,'Replace all IDE cables.','').
vertice_data(d36,'Match pin 1 on all the connectors.','').


%CD/DVD 
vertice_data(e1,'Will the tray eject when you press the eject button?','The most basic and potentially most disastrous problem that can occur with an optical drive is a stuck tray. Press it once, like a doorbell, and then move your finger away, or you may be sending it repeated open and close commands. The drive will not pop right open if it is actively playing a disc, and the operating system may be able to override the stop and open command. If you are trying to eject a music CD or DVD using Media Player software (clicking on a software eject button on the screen) and it does not work, try the manual button on the drive. If this is a newly installed drive, make sure you used the short screws shipped with the drive and not longer screws which can jam the mechanism. If there is a disc in the drive that can no longer be read, make sure the power supply lead is still seated in the socket on the back of the drive.').
vertice_data(e2,'Do the BIOS register the optical drive?','Shut down, restart, and try again. If the tray still does not eject, reboot again and note whether the BIOS registers the drive. Some brand name PCs do not report installed hardware on a boot screen, so you will have to access CMOS Setup to check. If the BIOS does not register the drive, it may have dropped dead.').
vertice_data(e3,'Does the drive vibrate when it spins up?','Make sure that the drive is mounted with four screws, and level. High speed drives will vibrate like crazy if a disc is off balance, usually because the disc itself has some weighting problem. Aside from obvious physical flaws (like the dog or the kid took a bite out of the edge of the disc) a miss-applied label can create an unbalanced disc. Try ejecting and reinserting the disc. Do not keep running a drive that vibrates badly even if it plays discs. It could end up damaging the discs (discs have been known to shatter at high speeds) and it does not do the other components in your system any good to be vibrated, which can lead to connections working apart or worse. If the problem only occurs with some discs, you can blame the discs. Otherwise, purchase a new drive.').
vertice_data(e5,'Is the optical drive locked by the OS because it is working?','Before you start tearing apart the machine, make sure that the tray is not locked by software. The drawer will not eject while the drive is working. If the operating system driver works properly, the hardware eject button will interrupt whatever software is controlling the drive. The easiest way to check if software is preventing a manual eject is to reboot the PC and hit the eject button before the operating system loads. You can also check the properties under the drive icon in Windows "My Computer." Some media player software may lock the hardware eject button, but you can eject using the software eject button on the player if everything is working.').
vertice_data(e6,'Force eject the drive and reboot the system.','').
vertice_data(e7,'Is there a pin hole on face of the drive?','Assuming the drive is still registered by the BIOS and seen by the operating system, you really do have a stuck disc. The next step is to look for a pinhole on the front of the CD or DVD drive. Power down the system and unplug the power cord, then straighten out a couple inches worth of paper clip, the heaviest gauge that will fit in the hole. Gently push the paper clip straight into the hole until you feel it depress the release mechanism. This will often cause the tray to pop out, other times you will have to pry it a little to get it started. Once you have enough tray sticking out to grab it with your fingers, you should be able to pull it out far enough to remove the disc. If the faceplate seems to be bulging as you pull, the disc is hung up on it, and the best thing to do is remove the drive from the PC and then remove the faceplate.').
vertice_data(e8,'Unplug the power, insert straightened paper-clip and pull the tray.','').
vertice_data(e9,'Pull out the tray, pry disassemble.','').
vertice_data(e10,'Eject and remount the optical drive. Check drive mounted level with 4 screws.','').
vertice_data(e11,'Is your drive having problems to burn a disc?','Some optical disc drives are capable of burning discs, which means the can write data. If this drive is capable of burning discs but can not perform it, then it is defective and needs to be replaced.').
vertice_data(e12,'Replace the optical drive.','').
vertice_data(e13,'Can the drive read data from a disc?','When you mount a disc, be it software or music, does the drive acknowledge that a disc is present and let you view the contents? It does not matter (at this point) whether or not you can get through installing the software on the disc or playing the movie or music. The question is simply, can the drive see anything at all on the disc?').
vertice_data(e14,'Is the drive Blu-Ray type?','The Blu-ray standard has not caught on with PC manufacturers in a big way, and one of the results is that the software support is sketchy. When new operating systems and software appear, the drive may not only require a new driver, but also a firmware update from the drive manufacturer. Other than checking for a firmware update, the troubleshooting for Blu-ray drives follows the same path as that for DVD drives.').
vertice_data(e15,'Can you listen to music CDs through your speakers?','The following assumes that you can get operating system sounds to play from your speakers. First, make sure that the CD is not muted in the software mixer panel. Next, if the drive is equipped with an audio jack on the front, stick in a cheap headphone (if you have one) and see if the CD is playing. In any case, if the CD is spinning and the time is advancing in whatever version of Media Player you have installed, the drive is actually playing the CD. New drives support DAE (Digital Audio Extraction) and some SATA drives do not support the old analog audio output at all. If you have a newer drive, check the DAE settings in the drive properties.').
vertice_data(e16,'DAE settings or audio patch cable from drive to sound card.','').
vertice_data(e17,'Can the drive play movies from a disc?','If you cannot play movies in your DVD that you can play on a television DVD player, the problem is usually with the software CODEC (COder/DECoder). Test the movie on a TV player first to make sure the disc is good. The media player you are using may display a specific error message, like telling you the screen properties must be set to a certain resolution and number of colors for a movie to play. Or, the player may report that it cannot find a decoder (CODEC) to play the particular disc. Even if the movie worked last night, your media player may have received an automated update the next time you went online that rendered the installed CODEC obsolete.').
vertice_data(e18,'Update or install a media player.','').
vertice_data(e19,'can you boots an OS from the drive?','Try setting the boot sequence in CMOS Setup to boot to the optical drive first. While this should not really be necessary for new builds if the hard drive is uninitiated, it often fixes the problem. Some older high speed drives take too long to spin up and report to the BIOS that there is a bootable disc present. Sometimes you can get around this by opening and closing the tray, which should cause the drive to spin up, and hitting reset right after you have done so. With any luck, you will get the timing right so that the BIOS checks for a bootable disc while the drive is still active. Make sure you test the boot disc in another PC, and if you are trying to get by with a recorded boot disc, at least test it in a different PC than the one where it was recorded.').
vertice_data(e20,'Performance issue unrelated to drive.','').
vertice_data(e21,'Change CMOS boot sequence.','').
vertice_data(e22,'Update firmware.','').
vertice_data(e23,'Does the drive play CDs but not DVDs or DVDs but not CDs?','The different generations of optical discs are read by different color lasers (different wavelengths of light) through different lenses. Manufacturers played some pretty clever tricks in making DVD drives backwards compatible with CDs using a single laser, but some designs include multiple lasers or mechanically swapped lenses. This means is it is possible for a laser failure or one dirty lens to lead to a drive that can play one generation of media and not another. Confirm this with multiple factory discs and try cleaning before replacing the drive.').
vertice_data(e24,'Ther is a laser failure, replace the drive.','').
vertice_data(e28,'Does the drive read other discs?','If the factory disc works, the issue is with the media or drive compatibility, and it is unlikely any tweaks will cure that. Clean the disc with a soft bit of flannel. The discs are plastic, so do not use solvents. Scratches can render a disc unreadable, including deep scratches on the label surface which cause distortions in the layer that is actually being read from the bottom. Try the disc in another reader before chucking it out, it could just have trouble with the device you were trying it in.').
vertice_data(e29,'Clean disc with flannel, check for scratches.','').
vertice_data(e30,'Have you run a lens cleaner disc?','Laser lens cleaning discs are purpose built for cleaning optical drives. They cost around $10 through a retail store, cheaper if you buy them online through third parties. The discs clean the lenses by physical contact, running brushes over them as the drive spins the disc. A surprising number of reviewers on sites like Amazon report that a cleaning disc fixed their problem. Since the disc will be rotating at high speed in the drive, do not try to improve the process by adding isopropyl alcohol to the brushes, because the centrifugal effect will just splatter it on the electronics.').
vertice_data(e31,'Repalace the drive.','').
vertice_data(e32,'Does the drive fail to show up in My Computer on your desktop?','The first step is to reinstall the driver. Delete the drive in Device Manager, reboot, and let Windows reinstall it. If you can boot an operating system disc in the drive, but the drive does not appear in Device Manager, the drive is being handled properly by the BIOS but not Windows. Make sure your virus software is functioning and download and run the latest comprehensive malware checker with good ratings since some malware interferes with the optical drive. Check if there is a firmware update for the drive itself on the website of the manufacturer.').
vertice_data(e33,'Is the drive using SATA?','If you are using a newer SATA DVD recorder/player or a Blu-ray, there are not any jumpers to set or cable sharing issues. If it is a new build, make sure that you do not have the data cable attached to a dedicated SATA RAID controller. But the safest way to determine if there is a problem with your SATA cable, or a compatibility issue with the BIOS, is to try the drive in another PC, or mount it in a powered 5.25" USB shell and connect it externally.').
vertice_data(e34,'Does the drive work in another PC?','The problem is either with your motherboard controller and drivers, or a hardware incompatibility.').
vertice_data(e35,'Replace the IDE cable.','').
vertice_data(e36,'Reinstall driver, replace data cable, test drive in USB enclosure or other PC.','').
vertice_data(e37,'Driver issue or controller compatibility.','').
vertice_data(e38,'Dissasemble to clean laser with alcohol, or replace it.','').


%Sound
vertice_data(f1,'Do you get any audio out of the PC other than beeps on power-up?','The beeps you hear on power-up are not part of the PCs sound system, they are generated by a tiny piezoelectric speaker on the motherboard that is included strictly for diagnostic codes.').
vertice_data(f3,'Have you enebled the audio device the OS device settings?','Windows will normally only process sound through one audio device at a time, and this will be whatever default audio device is chosen, unless the application does the switching for you. The audio playback device list is accessed different ways in different versions of Windows, but you can always find it through Control Panel under the generic Sounds and Audio Devices.').
vertice_data(f4,'Select correct audio device at the OS device manager.','').
vertice_data(f5,'Are you unable to play audio by an HDMI cable?','As long as you are using the proper HDMI cable and are plugged into PC HDMI port on the TV (assuming it has one) the problem is likely with software. Make sure that you have chosen the HDMI sound device for your output in Windows and that you have the latest drivers installed for your video card and motherboard, whichever hosts the HDMI device. And remember that there is a hardware level anti-piracy component, HDCP (High-bandwidth Digital Content Protection) to playing high definition movies with DVD quality sound, which may prevent non HDCP certified hardware from playing movie audio.').
vertice_data(f6,'Choose HDMI as audio device, PC HDMNI port, cable, drivers, piracy, video card, motherboard device drivers.','').
vertice_data(f7,'Are the speakers plugged in to a power source?','If there is an external volume control on speakers, it will serve as an on/off as well. USB speakers can draw DC power from the USB port, but most PC speakers include a power cord or transformer. Really ancient amplified speakers may be powered by batteries rather than a transformer, so if your speakers do not have a power cord, double check that they do not have a hatch for batteries. Note also that some of the oldest sound cards had a manual volume dial, so if you see one, adjust it to somewhere in the middle of the range, not all the way to one extreme or the other.').
vertice_data(f8,'Plug in speaker brick (transformer), except for USB powered and turn on external volume.',''). 
vertice_data(f9,'Have you run the Microsoft FixIt wizard for audio problems?','The FixIt wizard checks many of the issues detailed in the following troubleshooting chart steps, including conflicting software settings that can be very time consuming to find and check yourself.').
vertice_data(f10,'Run Windows Audio FixIt Wizard to configure the sound settings.','').
vertice_data(f11,'Have you recently upgraded the operating system?','The old device driver might not work with the new operating system or it might give the software only partial access to the hardwares capabilities, but in all cases, you should upgrade the drivers. If you have an add-in sound card, this means downloading a driver from the sound card maker. If you have HDMI sound through your add-in video adapter, download a new driver from the video adapter manufacturer website. If the audio is integrated on the motherboard, you will need new drivers from either the motherboard manufacturer, the PC manufacturer (if it is a brand name), or the audio chipset maker (RealTek, VIA, etc), whichever is actually providing the updates.').
vertice_data(f12,'Install a new sound driver.','').
vertice_data(f13,'Does Device Manager register the sound card?','Even if you do not have the proper driver, Device Manager will probably identify the audio hardware as a sound controller. Before you start stripping down the system or chase off to conflict resolution, make sure sound is not disabled in CMOS or the add-in adapter is seated in the motherboard slot.').
vertice_data(f14,'Does the Device Manager report any errors or issues?','If Device Manager reports a resource conflict between any of the audio devices and another device, look through all of your device reports and figure out where the conflict is. It may be resolvable by changing the settings in Device Manager, or it may take aggressive reshuffling of adapters. If you get a "!", "?" or "i" on the sound controller in Device Manager.').
vertice_data(f15,'Are you using USB speakers?','If you are using USB speakers or a full USB sound card, try connecting them to a different USB port. USB ports often break inside the PC when the cords are jerked or tripped over. If you cannot get the USB sound device to function on the PC, test it on any other PC or laptop. If it works on another computer, you know that the problem is either that all of your USB ports have failed (which would usually mean the USB controller on the motherboard popped), that the driver software is incompatible, or that you did not find a "mute" in the OS. Note also that amplified USB speakers may require more current that an older version USB port supplies, and may not operate properly through an unpowered USB hub.').
vertice_data(f16,'Replace the USB cable.','').
vertice_data(f17,'Have you run the "Add New Hardware" wizard?','Device Manager will normally spot new hardware the first time Windows boots with it, but sometimes a manual search is required. In Windows 7 and Windows 8, the "Add New Hardware" wizard has been replaced by the "Add Legacy Hardware," which can also be accessed by running Hdwwiz.exe. If your sound hardware is not found, check the "Other Devices" category to see if Windows is locating the hardware but not recognizing its purpose, which may be corrected if you can get the driver installed.').
vertice_data(f18,'Check Other Devices run Add Legacy Hardware in Windows 7, 8, or Hdwwiz.exe.','').
vertice_data(f19,'Are you using built-in motherboard sound?','If your only audio support is built into the motherboard, make sure it is enabled in CMOS Setup. If you are using a sound card, make sure any motherboard audio is disabled in CMOS Setup. The easiest way to replace a motherboard integrated sound card is to pick up USB speakers (the sound card is built into the speakers) or a full USB sound hub. The only potential problem with these is if you have an older CD or DVD drive that does not support DAE (Digital Audio Extraction) through the motherboard interface. Without DAE through the motherboard controller, USB sound devices will not be able to play music CDs.').
vertice_data(f20,'Disable motherboard sound at the CMOS and install a sound card.','').
vertice_data(f21,'Replace the sound card and use USB speakers.','').
vertice_data(f22,'Check Device Status for details, proceed step by step according to the information.','').
vertice_data(f23,'Have you checked all the jacks of the sound card for problems?','Modern sound cards and motherboards with 3-D sound (5.1, 6.1 and 7.1 3-D) have jacks for up to eight speakers. Try testing through the front speaker jacks only. Check that your audio patch cables are all plugged firmly into the proper jacks and that the cables are not damaged. If you have USB speakers, they do not jack directly into the sound card.').
vertice_data(f24,'Check that your audio patch cables are all plugged firmly into the proper jacks and that the cables are not damaged.','').
vertice_data(f25,'Every volume is up (speakers\OS)?','Software volume controls are the nuisance problem with sound, and a real pain to figure out if multiple people use the system. Aside from the primary volume control often found in your system tray, there are various other mixer panels and volume adjustments that get installed with the driver(s) and are offered in various applications. All of these can cause a complete absence of sound if the "mute" box is checked. There is no magic method for finding the mixer panel or any additional volume controls in a typical system, though the Windows FixIt wizard mentioned on the previous page can help.').
vertice_data(f26,'Sound capable devices, and 3rd party software may all have individual volume controls, mute boxes checked.','').
vertice_data(f27,'Does your sound system work properly with everything except music CDs?','Unless you missed a software setting, the problem is either the external hardware or the sound card output stage being blown. A good test is to try the speakers and cables on another system, or another device with a speaker jack, like a portable radio. Make sure you first turn the speaker volume control all the way down in case the output is already amplified. If your speakers and cables do not work anywhere, try swapping the cables to find out which is faulty. If the speakers and cables are good, either the sound card is blown or you did not look hard enough for a hidden mute in software.').
vertice_data(f29,'There is a hardware failure. Check the speakers, patch cables and sound card.','').


