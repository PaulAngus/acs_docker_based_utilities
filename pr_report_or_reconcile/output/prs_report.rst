
Work in Progress PRs

+-----------+--------------------------------------------------------------+------+-------+
| PR Number | Title                                                        | Type | Notes |
+-----------+--------------------------------------------------------------+------+-------+
|    1257   | CLOUDSTACK-9175: [VMware DRS] Adding new host to DRS cluster |  -   |   -   |
|           | does not participate in load balancing.                      |      |       |
|    1897   | CLOUDSTACK-9733: Concurrent volume snapshots of a VM are not |  -   |   -   |
|           | allowed and are not limited per host as per the global       |      |       |
|           | configuration parameter                                      |      |       |
|           | "concurrent.snapshots.threshold.perhost".                    |      |       |
|    1906   | CLOUDSTACK-9743 - ODL plugin responds to deleteHost causing  |  -   |   -   |
|           | other plugin in the chain to be ignored                      |      |       |
|    1965   | CLOUDSTACK-9727 Password reset discrepancy in RVR when one   |  -   |   -   |
|           | of the Rou…                                                  |      |       |
|    2067   | CLOUDSTACK-9852: This patch implements the storage lb        |  -   |   -   |
|           | feature                                                      |      |       |
|    2090   | CLOUDSTACK-8415 [VMware] SSVM shutdown during snapshot       |  -   |   -   |
|           | operation results in disks to be left behind                 |      |       |
|    2231   | [CLOUDSTACK-10039] Adding IOPS/GB offering                   |  -   |   -   |
|    2234   | CLOUDSTACK-10041: Support to use ikev1 for site-to-site VPN  |  -   |   -   |
|           | connections                                                  |      |       |
|    2275   | CLOUDSTACK-9975: Allow customizing system VM templates for   |  -   |   -   |
|           | SSVM and Console Proxy                                       |      |       |
|    2290   | WIP: add track id to async api calls                         |  -   |   -   |
|    2338   | [WIP] CLOUDSTACK-8968: UI icon over VM snapshot to deploy    |  -   |   -   |
|           | user instance.                                               |      |       |
|    2340   | CLOUDSTACK-10106: GPU/vGPU Support on VMware                 |  -   |   -   |
|    2440   | CLOUDSTACK-10260 : Introducing a new API to collect and list |  -   |   -   |
|           | CPU Sockets Metrics information for all Hypervisors.         |      |       |
|    3036   | CLOUDSTACK-3035: Implemented capabilities for snapshots and  |  -   |   -   |
|           | vm snapshots.                                                |      |       |
|    3186   | Add possibility to set KVM MTU size for all NIC              |  -   |   -   |
|    3527   | [WIP] [REFRESH] CLOUDSTACK-10106: GPU/vGPU Support on VMware |  -   |   -   |
|    3580   | Vmware hypervisor : enhance Mac OS compatibility             |  -   |   -   |
|    3595   | [WIP DO NOT MERGE] KVM dynamic VM scaling                    |  -   |   -   |
|    3712   | [WORK IN PROGRES - do NOT merge] Replace builtin CentOS 5.x  |  -   |   -   |
|           | with 8.0 templates                                           |      |       |
|    3748   | Systemvm template api                                        |  -   |   -   |
|    3933   | Ip manager refactor                                          |  -   |   -   |
|    3951   | Network orchestrator refactor                                |  -   |   -   |
|    4182   | kvm: pre-add 32 PCI controller for hot-plug issue            |  -   |   -   |
|    4205   | Integrate Tungsten Fabric with CloudStack                    |  -   |   -   |
|    4300   | [WIP] engine: add support for VMware 7.0 dependency and      |  -   |   -   |
|           | hypervisor capability                                        |      |       |
|    4329   | Adding AutoScaling for cks + CKS CoreOS EOL update           |  -   |   -   |
|    4339   | Allow domain admin to change domain and account settings     |  -   |   -   |
+-----------+--------------------------------------------------------------+------+-------+
27 PRs listed

New (merged) Features & Enhancements

+-----------+--------------------------------------------------------------+-------------+-------+
| PR Number | Title                                                        |     Type    | Notes |
+-----------+--------------------------------------------------------------+-------------+-------+
|    3945   | server: update template to another template type             | New Feature |   -   |
|    3946   | server: add global configuration for default router service  | New Feature |   -   |
|           | offering                                                     |             |       |
|    4040   | [KVM] Enable PVLAN support on L2 networks                    | New Feature |   -   |
|    4053   | Secondary Storage Usage Improvements                         | New Feature |   -   |
|    4068   | Adding Centos8, Ubuntu 20.04, XCPNG8.1 Support               | New Feature |   -   |
|    4092   | engine/schema: add empty DB upgrade path from 4.14.0.0 to    | New Feature |   -   |
|           | 4.15.0.0                                                     |             |       |
|    4103   | [VMware] Enable unmanaging guest VMs                         | New Feature |   -   |
|    4104   | Debian10 support                                             | New Feature |   -   |
|    4128   | Role based users in Projects                                 | New Feature |   -   |
|    4164   | Adding listall to listLdapConfigurations                     | New Feature |   -   |
|    4175   | Redfish Client & Redfish OOBM Driver                         | New Feature |   -   |
|    4207   | Human readable sizes in logs                                 | New Feature |   -   |
|    4304   | Storage plugin for Dell EMC PowerFlex/ScaleIO (formerly      | New Feature |   -   |
|           | VxFlexOS)                                                    |             |       |
|    4307   | [VMware] vSphere advanced capabilities and Full OVF          | New Feature |   -   |
|           | properties support                                           |             |       |
|    4341   | Allow to configure root disk size via Service Offering       | New Feature |   -   |
|           | (diskoffering of type Service).                              |             |       |
|    3921   | Updated vmware virtual hardware version in systemvmtemplate  | Enhancement |   -   |
|           | build script                                                 |             |       |
|    3967   | noVNC console integration                                    | Enhancement |   -   |
|    3976   | Enable sending hypervior host name via metadata - VR and     | Enhancement |   -   |
|           | Config Drive                                                 |             |       |
|    4013   | Allow IMG extension for QCOW2 format                         | Enhancement |   -   |
|    4017   | [UI] Update ISO permissions                                  | Enhancement |   -   |
|    4021   | Boot into hardware setup menu on Vmware                      | Enhancement |   -   |
|    4035   | Document how to pass CIDRs lists API calls                   | Enhancement |   -   |
|    4046   | Display image store disk size used and total disk size stats | Enhancement |   -   |
|    4048   | Update DpdkDriverImpl.java to support DPDK trunk interfaces  | Enhancement |   -   |
|    4065   | Enable revocation checking for uploaded certificates         | Enhancement |   -   |
|    4070   | Update cloud-set-guest-password.in                           | Enhancement |   -   |
|    4071   | Dynamic roles improvements                                   | Enhancement |   -   |
|    4073   | Display network name for IP in shared networks               | Enhancement |   -   |
|    4075   | Search VR using redundant state                              | Enhancement |   -   |
|    4083   | Allow set IPv6 when deploying advanced network  Zone with SG | Enhancement |   -   |
|           | via UI                                                       |             |       |
|    4100   | RabbitMQ log enhancement                                     | Enhancement |   -   |
|    4117   | [VMware] Explicitly controlling VM hardware version          | Enhancement |   -   |
|    4126   | Enhance KVM running VM snapshot exception log                | Enhancement |   -   |
|    4140   | Adding showunique parameter to list templates and isos       | Enhancement |   -   |
|    4165   | Allow renaming cluster, host, and storage                    | Enhancement |   -   |
|    4167   | Adding missing fields to API responses                       | Enhancement |   -   |
|    4172   | [VMware] Support to attach more than 15 data disks in VMware | Enhancement |   -   |
|           | VM                                                           |             |       |
|    4180   | Added nfs minor version support                              | Enhancement |   -   |
|    4194   | enable update tags on disk offerings                         | Enhancement |   -   |
|    4202   | server: don't export B&R APIs if feature is not enabled      | Enhancement |   -   |
|           | globally                                                     |             |       |
|    4231   | kvm/ceph: Only if a port number has been specified define in | Enhancement |   -   |
|           | the XML                                                      |             |       |
|    4239   | Disabling managing firewall - cloudstack-setup-management    | Enhancement |   -   |
|    4249   | Host SSVM Debian ISO on download.cloudstack.org              | Enhancement |   -   |
|    4251   | Handle with VM snapshot events                               | Enhancement |   -   |
|    4255   | Prevent null pointer on listPublicIpAddress cmd              | Enhancement |   -   |
|    4256   | Fix comparison using nullable objects                        | Enhancement |   -   |
|    4258   | List networks using networkofferingid                        | Enhancement |   -   |
|    4266   | Adding os type id to the usage record response for virtual   | Enhancement |   -   |
|           | machines                                                     |             |       |
|    4271   | hypervisor: Add Citrix Hypervisor 8x product name support    | Enhancement |   -   |
|    4275   | Display hypervisor type for VM snapshot                      | Enhancement |   -   |
|    4284   | Fixed delayed power state update after vm shutdown           | Enhancement |   -   |
|    4305   | Changing dependency from python3-distutils to                | Enhancement |   -   |
|           | python3-distutils-extra                                      |             |       |
|    4315   | Adding acl name to listNetworkAcl, listNetwork,              | Enhancement |   -   |
|           | listPrivateGateway, listVpcs responses                       |             |       |
|    4317   | Display acl name in listNetworks response                    | Enhancement |   -   |
|    4323   | systemvm: Update novnc                                       | Enhancement |   -   |
|    4341   | Allow to configure root disk size via Service Offering       | Enhancement |   -   |
|           | (diskoffering of type Service).                              |             |       |
|    4345   | Binding listening socket to all address for remote debug     | Enhancement |   -   |
|    4352   | Retry redfish requests                                       | Enhancement |   -   |
|    4354   | createaccountcmd: Improving account param description        | Enhancement |   -   |
|    4360   | server: Update use_bytes of storage pools                    | Enhancement |   -   |
|    4361   | Add vpcid in usage network response                          | Enhancement |   -   |
|    4363   | Ability to put a server in Down state to maintenance         | Enhancement |   -   |
|    4365   | Export dedicated host stats to prometheus                    | Enhancement |   -   |
|    4366   | Consider maintenance mode as offline for prometheus stats    | Enhancement |   -   |
|    4379   | Add global configuration for max cpu/ram in service          | Enhancement |   -   |
|           | offerings                                                    |             |       |
|    4382   | debian/control: add uuid-runtime to cloudstack-common,       | Enhancement |   -   |
|           | ufw/apparmor to cloudstack-agent                             |             |       |
|    4385   | vmware: vm migration improvements                            | Enhancement |   -   |
|    4395   | support for data migration of incremental snaps on xen       | Enhancement |   -   |
|    4397   | List VMs by Security Group & HA                              | Enhancement |   -   |
|    4407   | packaging: enable Parallel Collector GC for management       | Enhancement |   -   |
|           | server                                                       |             |       |
|    4409   | Enhance UpdateDiskOfferingCmd                                | Enhancement |   -   |
|    4412   | Validating type parameter and including all types            | Enhancement |   -   |
|    4414   | Adding public ip to listKubernetesClusterResponse            | Enhancement |   -   |
|    4415   | CKS : More log changes from uuid to name                     | Enhancement |   -   |
|    4418   | Create Event in case of OOBM failure                         | Enhancement |   -   |
|    4420   | Including instance details in KubernetesClusterResponse      | Enhancement |   -   |
|    4439   | Added compress option to dnsmasq log files                   | Enhancement |   -   |
|    4499   | Adding cpuallocated percentage and value to host and         | Enhancement |   -   |
|           | hostsformigrationresponse                                    |             |       |
|    4510   | Adding zone name to physicalnetworkresponse                  | Enhancement |   -   |
|    4564   | Network Offering: Allow enabling network and vpc offering    | Enhancement |   -   |
|           | during creation                                              |             |       |
|    4569   | Replicate `rootDiskController` behavior to                   | Enhancement |   -   |
|           | `dataDiskController`.                                        |             |       |
|    4583   | Externalize TLS version on Quota's mailing                   | Enhancement |   -   |
|    4686   | Display creation date for domain and account                 | Enhancement |   -   |
|    4688   | format of checksum files convenient for automated checking   | Enhancement |   -   |
+-----------+--------------------------------------------------------------+-------------+-------+
84 Features listed

Bug Fixes (merged)

+-----------+--------------------------------------------------------------+---------+-----------+
| PR Number | Title                                                        |   Type  |  Severity |
+-----------+--------------------------------------------------------------+---------+-----------+
|    4288   | client: explicitly define SslContextFactory::Server for      | Bug Fix |  BLOCKER  |
|           | https                                                        |         |           |
|    4475   | Fix: Data migration                                          | Bug Fix |  BLOCKER  |
|    4040   | [KVM] Enable PVLAN support on L2 networks                    | Bug Fix |  Critical |
|    4121   | server: fix TransactionLegacy DB connection leaks due to DB  | Bug Fix |  Critical |
|           | switching by B&R thread                                      |         |           |
|    4124   | Missing python3 libvirt bindings                             | Bug Fix |  Critical |
|    4176   | server: Purge all cookies on logout, set /client path on     | Bug Fix |  Critical |
|           | login                                                        |         |           |
|    4254   | Name public network appropriately to avoid conflicts         | Bug Fix |  Critical |
|    4260   | cks: fix for null hypervisor type                            | Bug Fix |  Critical |
|    4264   | Changed test failure to warning                              | Bug Fix |  Critical |
|    4269   | cks: assorted fixes, test refactoring                        | Bug Fix |  Critical |
|    4272   | Fixed rolling restart on VPC network                         | Bug Fix |  Critical |
|    4274   | engine: honour bypass VLAN id/range for L2 networks          | Bug Fix |  Critical |
|    4291   | Manage influxDB Batches avoiding OutOfMemory Exception       | Bug Fix |  Critical |
|    4326   | ui: call logout before login to clear old sessionkey cookies | Bug Fix |  Critical |
|    4425   | Setting snapshot removed on timeout                          | Bug Fix |  Critical |
|    4437   | [Bug fix] VMware: Fix for SSVM recreation on deployasis      | Bug Fix |  Critical |
|           | systemVM templates                                           |         |           |
|    4480   | Fix migrateVMwithVolumes API in case of multiple volumes on  | Bug Fix |  Critical |
|           | VMware                                                       |         |           |
|    4484   | VPC: fix some issues related to multiple public IP ranges    | Bug Fix |  Critical |
|           | and private gateway                                          |         |           |
|    4627   | VR: fix expunging vm will remove dhcp entries of another vm  | Bug Fix |  Critical |
|           | in VR                                                        |         |           |
|    3794   | create Volume Access Groups per cluster instead of           | Bug Fix |   Major   |
|           | CloudStack-RandomUUID()                                      |         |           |
|    3902   | vrouter: Save PlaceHolder nic for VR if network does not     | Bug Fix |   Major   |
|           | have source nat                                              |         |           |
|    3949   | Fix: catch CloudRuntimeException in                          | Bug Fix |   Major   |
|           | LibvirtGetVolumeStatsCommandWrapper.java                     |         |           |
|    4000   | vm: Reset deviceId to fix missing nic with vm                | Bug Fix |   Major   |
|    4001   | server: Dedicated hosts should be 'Not Suitable' while find  | Bug Fix |   Major   |
|           | host for m migration                                         |         |           |
|    4004   | Fixed null pointer and deployment issue on Xenserver with L2 | Bug Fix |   Major   |
|           | Guest network with configDrive                               |         |           |
|    4007   | Restarting all networks that needs a restart in a VPC        | Bug Fix |   Major   |
|    4016   | Fixed private gateway can't be deleted                       | Bug Fix |   Major   |
|    4019   | server: Move restoreVM to vm work job queue                  | Bug Fix |   Major   |
|    4020   | server: move UpdateDefaultNic to vm work job queue           | Bug Fix |   Major   |
|    4062   | [VMware] Cannot migrate VM on PVLAN shared network           | Bug Fix |   Major   |
|    4064   | fix dhcp lease entry wrong hostname                          | Bug Fix |   Major   |
|    4078   | Cleanup download urls when SSVM destroyed                    | Bug Fix |   Major   |
|    4079   | Fixed HA migrated storage error                              | Bug Fix |   Major   |
|    4104   | Debian10 support                                             | Bug Fix |   Major   |
|    4116   | cks: fix template, deployment issues                         | Bug Fix |   Major   |
|    4123   | Improved kvmvmactivitycheck.sh output                        | Bug Fix |   Major   |
|    4148   | server: Do not resize volume of running vm on KVM host if    | Bug Fix |   Major   |
|           | host is not Up or not Enabled                                |         |           |
|    4156   | Fixed removal of hosts from certsmap when running            | Bug Fix |   Major   |
|           | certificate auto-renew                                       |         |           |
|    4171   | vr: fix backup router health check                           | Bug Fix |   Major   |
|    4177   | Prevent deploying IPv6 network if Zone has no IPv6 DNS       | Bug Fix |   Major   |
|           | configured                                                   |         |           |
|    4188   | Fix snapshots garbage collection                             | Bug Fix |   Major   |
|    4202   | server: don't export B&R APIs if feature is not enabled      | Bug Fix |   Major   |
|           | globally                                                     |         |           |
|    4219   | iscsi session cleanup now configurable, filters iscsi        | Bug Fix |   Major   |
|           | partitions                                                   |         |           |
|    4225   | vmware: volume utilisation is always zero                    | Bug Fix |   Major   |
|    4303   | Ubuntu 20.04: Fix systemvm cannot start up                   | Bug Fix |   Major   |
|    4319   | Fix "data-server" dns entry in /etc/hosts after a new        | Bug Fix |   Major   |
|           | deployment                                                   |         |           |
|    4321   | VMware: match hardware version for worker VM when taking a   | Bug Fix |   Major   |
|           | snapshot                                                     |         |           |
|    4327   | Re-enable IP address usage hiding                            | Bug Fix |   Major   |
|    4328   | vmware: search unmanaged instances using hypervisor name     | Bug Fix |   Major   |
|    4336   | vmware: while plugging in nics get existing sorted nic       | Bug Fix |   Major   |
|           | devices                                                      |         |           |
|    4348   | vmware: use hotPlugMemoryIncrementSize only for valid value  | Bug Fix |   Major   |
|    4359   | Failed to update host password if username/password is not   | Bug Fix |   Major   |
|           | saved in db                                                  |         |           |
|    4373   | Handles creation /var/run/cloud folder for creation of lock  | Bug Fix |   Major   |
|           | file while modifyvxlan.sh script is run                      |         |           |
|    4374   | Fixing searchAndCount searchAndDistinctCount when sc is null | Bug Fix |   Major   |
|    4387   | Fix JsonSyntaxException when creating API command response   | Bug Fix |   Major   |
|           | #4355                                                        |         |           |
|    4389   | Fixed vm-templates not being removed from primary storage    | Bug Fix |   Major   |
|           | with storag…                                                 |         |           |
|    4404   | scalekubernetesclustercmd: Making id a required field [NPE   | Bug Fix |   Major   |
|           | Fix]                                                         |         |           |
|    4413   | systemvm: fix proc.find in CsProcess.py                      | Bug Fix |   Major   |
|    4429   | FIX s2svpn connection stuck on Pending state                 | Bug Fix |   Major   |
|    4430   | FIX issue in VR if remote access vpn is enabled              | Bug Fix |   Major   |
|    4432   | Unable to create snapshot from vm snapshot                   | Bug Fix |   Major   |
|    4442   | Preventing port 53 being added as lb rule when dns service   | Bug Fix |   Major   |
|           | is availab…                                                  |         |           |
|    4456   | Returning nic details in KubernetesClusterResponse           | Bug Fix |   Major   |
|    4458   | Fix k8s cluster upgrade in shared networks                   | Bug Fix |   Major   |
|    4466   | VR: fix logging is not working and logs are not appended to  | Bug Fix |   Major   |
|           | /var/log/cloud.log                                           |         |           |
|    4467   | vpc: fix ips on wrong interfaces after rebooting vpc vrs     | Bug Fix |   Major   |
|    4476   | Removed sensitive info from UI when volume attach/detach     | Bug Fix |   Major   |
|           | fails                                                        |         |           |
|    4491   | fix on changeServiceForVirtualMachine when updating          | Bug Fix |   Major   |
|           | read/write rate                                              |         |           |
|    4529   | vr: Ensuring dnsmasq.leases file is populated                | Bug Fix |   Major   |
|    4540   | Bug/unmanaged ingest exceptions #4539                        | Bug Fix |   Major   |
|    2206   | [CLOUDSTACK-10020] Changes to make marvin work with projects | Bug Fix |   Minor   |
|           | and VPCs                                                     |         |           |
|    3952   | vrouter: remove a POSTROUTING rule for port forwarding in    | Bug Fix |   Minor   |
|           | VPC router                                                   |         |           |
|    3955   | docker: upgrade to ubuntu 18.04 and fix some issues          | Bug Fix |   Minor   |
|    3965   | server: Honor vm.destroy.forcestop when expunge a vm         | Bug Fix |   Minor   |
|    3979   | Limit API from trying to start a VM that is already running  | Bug Fix |   Minor   |
|    3980   | Fix String.format unused/misused arguments                   | Bug Fix |   Minor   |
|    3991   | Multiple dynamic VM Scaling APIs can create duplicate usage  | Bug Fix |   Minor   |
|           | events for the same time                                     |         |           |
|    3996   | UI: Hide cpuspeed for custom constrained offering            | Bug Fix |   Minor   |
|    4003   | Logging framework to use only log4j                          | Bug Fix |   Minor   |
|    4077   | Disable searching by instance name for customers             | Bug Fix |   Minor   |
|    4085   | Fix duplicate user entries for vpn usage                     | Bug Fix |   Minor   |
|    4109   | add support for XCP-ng 7/8 to create it's heartbeat LVM      | Bug Fix |   Minor   |
|           | properly                                                     |         |           |
|    4122   | Maximum data volumes limit is picked from "default" version  | Bug Fix |   Minor   |
|           | of hypervisor, instead of actual hypervisor version          |         |           |
|    4130   | Fixed null pointer after deleting snapshot, GC and cross     | Bug Fix |   Minor   |
|           | cluster vm migration on XCP-NG                               |         |           |
|    4132   | Fix delete network with no services                          | Bug Fix |   Minor   |
|    4142   | Invalid character encountered in file ui/l10n/pt_BR.js at    | Bug Fix |   Minor   |
|           | line 1134 for encoding UTF-8.                                |         |           |
|    4144   | Fix Usage failed to get pid                                  | Bug Fix |   Minor   |
|    4145   | Fixing listVirtualMachinesMetrics to extend ListVMsCmd       | Bug Fix |   Minor   |
|           | instead of ListVMsCmdByAdmin                                 |         |           |
|    4154   | server: fix for wrong affinity group count                   | Bug Fix |   Minor   |
|    4174   | Set prometheus.exporter.enable as not dynamic                | Bug Fix |   Minor   |
|    4186   | Adding pagination for quotaSummary and quotaTariffList       | Bug Fix |   Minor   |
|    4190   | Broadcast URI not set to vxlan, but vlan (Fix #3040)         | Bug Fix |   Minor   |
|    4193   | Fix usage record count                                       | Bug Fix |   Minor   |
|    4196   | VMware: Guest OS Mappings fix                                | Bug Fix |   Minor   |
|    4213   | Search vm snapshots using tags                               | Bug Fix |   Minor   |
|    4214   | Bug fixes for primate                                        | Bug Fix |   Minor   |
|    4220   | Fix cpuallocated value in findHostsForMIgration api          | Bug Fix |   Minor   |
|    4226   | Removed check on SSLEngine client mode                       | Bug Fix |   Minor   |
|    4228   | Dont add host back after agent service restart               | Bug Fix |   Minor   |
|    4243   | Update SystemVM debian iso from 10.4.0 to 10.5.0             | Bug Fix |   Minor   |
|    4262   | fix test failure                                             | Bug Fix |   Minor   |
|    4268   | Prevent NullPointerException on GenericDaoBase               | Bug Fix |   Minor   |
|    4279   | Avoid Null pointer at DomainChecker and enhance AssignVMCmd  | Bug Fix |   Minor   |
|    4287   | Update Java Rados from v0.5.0 to v0.6.0                      | Bug Fix |   Minor   |
|    4294   | Create template from detached data-disks on VMWare           | Bug Fix |   Minor   |
|    4297   | Incorrect md5sums for systemVM templates results in failure  | Bug Fix |   Minor   |
|           | to download templates to other image stores                  |         |           |
|    4301   | Ubuntu 20.04: restart libvirtd instead of libvirt-bin        | Bug Fix |   Minor   |
|    4312   | Increase wait time before running the ssvm health check      | Bug Fix |   Minor   |
|           | script on SSVM reboot                                        |         |           |
|    4316   | Handle listProjects API to list projects with user as        | Bug Fix |   Minor   |
|           | members when listAll=true                                    |         |           |
|    4320   | Change Global setting type for allow.user.create.projects    | Bug Fix |   Minor   |
|    4331   | change upgrade path to 4.14 (from 4.13) and intensify check  | Bug Fix |   Minor   |
|    4335   | agent: Compare indirect agent lb algorithm when cloudstack   | Bug Fix |   Minor   |
|           | agent conn…                                                  |         |           |
|    4338   | server: check guest os preference of last host when start a  | Bug Fix |   Minor   |
|           | vm                                                           |         |           |
|    4367   | Remove cpu core from op_host_capacity when host is deleted   | Bug Fix |   Minor   |
|    4375   | Fixing count for findHostsForMigration                       | Bug Fix |   Minor   |
|    4376   | server: Fix some cpuspeed issues while create service        | Bug Fix |   Minor   |
|           | offering                                                     |         |           |
|    4377   | server: fix issue that vm guest os type is reset after       | Bug Fix |   Minor   |
|           | updatetemplate                                               |         |           |
|    4381   | kvm: fix wrong VM CPU usage                                  | Bug Fix |   Minor   |
|    4383   | Host is counted twice if it has multiple host tags in        | Bug Fix |   Minor   |
|           | Prometheus exporter                                          |         |           |
|    4388   | fix NPE in volumes statistics                                | Bug Fix |   Minor   |
|    4405   | Re-add affinity group                                        | Bug Fix |   Minor   |
|    4408   | Hiding system reserved IP addresses                          | Bug Fix |   Minor   |
|    4411   | Display Kubernetes cluster name instead of uuid              | Bug Fix |   Minor   |
|    4426   | DB: fix wrong category id of guest os 'Other PV Virtio-SCSI  | Bug Fix |   Minor   |
|           | (64-bit)'                                                    |         |           |
|    4428   | Moved dedicated hosts to the end of the resultset when       | Bug Fix |   Minor   |
|           | selecting an e…                                              |         |           |
|    4446   | Check all mgt server connectivity                            | Bug Fix |   Minor   |
|    4451   | loop optimisation in bash                                    | Bug Fix |   Minor   |
|    4452   | Consider other conditions while listing templates with id    | Bug Fix |   Minor   |
|    4461   | Fix destroying k8s cluster on shared networks                | Bug Fix |   Minor   |
|    4464   | Fix IndexOutOfBoundsException when creating basic network    | Bug Fix |   Minor   |
|    4465   | fix login issue post upgrade                                 | Bug Fix |   Minor   |
|    4478   | Adding memoryallocatedpercentage & memoryallocatedbytes to   | Bug Fix |   Minor   |
|           | HostsResponse & HostsForMigrationResponse                    |         |           |
|    4600   | server: fix cannot create vm if another vm with same name    | Bug Fix |   Minor   |
|           | has been added and removed on the network                    |         |           |
|    4602   | server: keep networks order and ips while move a vm with     | Bug Fix |   Minor   |
|           | multiple networks                                            |         |           |
|    4609   | API discovery: Prevent overwrite of API parameters in cases  | Bug Fix |   Minor   |
|           | where API names are same                                     |         |           |
|    3982   | Updated 3 error messages to replace the word 'matches' with  | Bug Fix |  Trivial  |
|           | 'match'                                                      |         |           |
|    4087   | python format                                                | Bug Fix |  Trivial  |
|    4097   | Adding novnc license exclusion                               | Bug Fix |  Trivial  |
|    4110   | cleanup of redundant check for sameOwner                     | Bug Fix |  Trivial  |
|    4119   | kvm: bump jna version to latest                              | Bug Fix |  Trivial  |
|    4138   | Fixed incorrect error message on invalid template type       | Bug Fix |  Trivial  |
|           | download                                                     |         |           |
|    4162   | Exception Message rephrasing                                 | Bug Fix |  Trivial  |
|    4253   | Fix sed command failure in Mac OS.                           | Bug Fix |  Trivial  |
|    4278   | Usage-server update message improvement                      | Bug Fix |  Trivial  |
|    4306   | Ubuntu 20.04: Fix issue while build package on ubuntu 20.04  | Bug Fix |  Trivial  |
|    4309   | cks: fix logging exception on create cluster                 | Bug Fix |  Trivial  |
|    4333   | Minor message update                                         | Bug Fix |  Trivial  |
|    4396   | Show network name in exception message                       | Bug Fix |  Trivial  |
|    4417   | Modify alter view to drop/create view                        | Bug Fix |  Trivial  |
|    4435   | server: fix format error with memorywithoverprovisioning in  | Bug Fix |  Trivial  |
|           | list hosts response                                          |         |           |
|    4440   | fix pbm url download                                         | Bug Fix |  Trivial  |
|    4485   | Fixing misleading HostMetricsResponse param description      | Bug Fix |  Trivial  |
|    4487   | accountresponse: Fix domainpath description                  | Bug Fix |  Trivial  |
|    4495   | fix failures with test_multiple_nic_support.py               | Bug Fix |  Trivial  |
|    4515   | Update log output for FirstFitPlanner                        | Bug Fix |  Trivial  |
|    3998   | NPE when VM is planned to migrate to other host during       | Bug Fix | unmatched |
|           | dynamic scaling                                              |         |           |
|    4289   | default teardown methods with reversed() handling            | Bug Fix | unmatched |
|    4340   | Changing test_pvlan vlan id to prevent conflict with smoke   | Bug Fix | unmatched |
|           | tests env config                                             |         |           |
|    4392   | Fixed double slash in secret breaking db insert              | Bug Fix | unmatched |
|    4427   | packaging/deb: Include cloudstack-guest-tool into            | Bug Fix | unmatched |
|           | cloudstack-agent DEB package                                 |         |           |
|    4445   | Cleanup domain details when domain is deleted                | Bug Fix | unmatched |
|    4459   | createkubertetesbinariesiso: Saving images in network and    | Bug Fix | unmatched |
|           | dashboard yaml                                               |         |           |
|    4469   | Fix: Listing projects comprising of only the user's on       | Bug Fix | unmatched |
|           | listAll=true                                                 |         |           |
|    4489   | vr: fix python exception when configure VRs                  | Bug Fix | unmatched |
|    4500   | Fix hosts for migration count                                | Bug Fix | unmatched |
|    4501   | Disallowing udp for lb rules for haproxy                     | Bug Fix | unmatched |
|    4511   | listphysicalnetworks: Honouring keyword parameter            | Bug Fix | unmatched |
|    4530   | extract volume: Fix NPE when Volume exists on secondary      | Bug Fix | unmatched |
|           | store but doesn't have a download URL                        |         |           |
|    4557   | Fixed instance creation failure on dvswitch when using vlan  | Bug Fix | unmatched |
|           | id 4095                                                      |         |           |
|    4591   | server: select root disk based on user input during vm       | Bug Fix | unmatched |
|           | import                                                       |         |           |
|    4601   | server: Get vm network/disk statistics and update database   | Bug Fix | unmatched |
|           | per host                                                     |         |           |
|    4615   | Secondary storage: Allow store deletion after successful     | Bug Fix | unmatched |
|           | data migration                                               |         |           |
|    4650   | test: hardware required for changeserviceoffering            | Bug Fix | unmatched |
|    4651   | marvin: fix test failures when changing service offering of  | Bug Fix | unmatched |
|           | a VM                                                         |         |           |
|    4653   | Update cloud-setup-databases.in - help message fix           | Bug Fix | unmatched |
|    4655   | test: fix checksums for test template                        | Bug Fix | unmatched |
|    4683   | ui: fix systevmtype for create service offering form         | Bug Fix | unmatched |
|    4684   | cks: fix CNI release url returning 404                       | Bug Fix | unmatched |
+-----------+--------------------------------------------------------------+---------+-----------+
178 Bugs listed

Uncategorised Merged PRs

+-----------+--------------------------------------------------------------+
| PR Number | Title                                                        |
+-----------+--------------------------------------------------------------+
|    4471   | Packaging: new timestamp format and add output dir option    |
|    4483   | Display VPC name to which the network belongs to             |
|    4486   | Add event for VM recovery operation                          |
|    4494   | sql: Fix Zones are returned in a random order (#3934)        |
|    4496   | kvm: fix router.aggregation.command.each.timeout is reset to |
|           | 600 when update other kvm configs                            |
|    4497   | kvm: FIX cpucorespersocket is not working on KVM             |
|    4503   | Specify IP for VR in shared networks                         |
|    4505   | Make global setting "secstorage.max.migrate.sessions" non-   |
|           | dynamic                                                      |
|    4507   | Fix failure in validating IP address in case of multiple     |
|           | Management Servers                                           |
|    4512   | VPC VR: fix Conflicting device id on private gw nic when     |
|           | restart vpc with cleanup                                     |
|    4516   | Fix hypervisor type cast to string                           |
|    4518   | ui: deprecate old UI and move to legacy to be served at      |
|           | /client/legacy                                               |
|    4521   | change debug to warn for unknown exceptions                  |
|    4522   | template: Ensuring template is cross zone if type changed to |
|           | system                                                       |
|    4523   | Fix warning when setup cloudstack-common                     |
|    4524   | Display lb rule name instead of uuid                         |
|    4525   | xenserver: check and eject patch vbd for systemvms           |
|    4526   | db: Fix description of volume.stats.interval which is in     |
|           | milliseconds…                                                |
|    4527   | kvm: set cpu topology only if cpucore per socket is set      |
|    4532   | apidoc issue                                                 |
|    4533   | db upgrade: use "create or replace view" instead of "alter   |
|           | view"                                                        |
|    4536   | CLOUDSTACK-10423:Potential sensitive information disclosure  |
|    4538   | CLOUDSTACK-10425:Potential sensitive information disclosure  |
|    4553   | Fix for mapping guest OS type read from OVF to existing      |
|           | guest OS in C…                                               |
|    4555   | VMware: Fix template upload from local                       |
|    4559   | networkorchestrator: Fix typo in exception message           |
|    4562   | Prevent KVM from performing volume migrations of running     |
|           | instances                                                    |
|    4565   | Fix RBD primary storage host port null error                 |
|    4568   | kvm: Fix double-escape issue while creating rbd disk options |
|    4576   | Fix: Use Q35 chipset for UEFI x86_64                         |
|    4580   | engine/schema: add upgrade path from 4.14.0.0 to 4.14.1.0    |
|    4582   | Upgrade: check systemvm template before db changes           |
|    4598   | ui: Merge Primate Repo                                       |
|    4604   | api: add zone, vm name params in listVmSnapshot response     |
|    4605   | packaging: build and bundle UI using npm in deb and rpm      |
|           | packages                                                     |
|    4611   | UI Storage Pool Tags: unable to delete last tag              |
|    4614   | vmsnapshot: Add quickview to the list of VM Snapshot         |
|    4620   | Fix screenshot path on README of /ui directory               |
|    4621   | Fixed typo                                                   |
|    4622   | server: add possibility to scale vm to current custom        |
|           | offerings on UI                                              |
|    4623   | server: Fix update capacity for hosts take long time if      |
|           | there are many service offerings                             |
|    4624   | server: fix wrong error message when create isolated network |
|           | without SourceNat                                            |
|    4625   | server: throw exception when update vm nic on L2 network     |
|    4629   | server: prevent update vm read-only details                  |
|    4633   | doc: fix typo in install notes                               |
|    4648   | Fix typo on FirstFitAllocator                                |
|    4649   | add creation date as a value for domains and accounts.       |
|    4656   | Ubuntu 20.04: set Backing Format of qcow2 images in vm start |
|           | and migration                                                |
|    4665   | ui: fix tags selection for add disk offering                 |
|    4667   | Display account name only if its not null                    |
|    4709   | updated maven download link                                  |
|    4712   | marvin: Bypass tests on Simulator                            |
|    4713   | API: Increase leniency to list templates on secondary stores |
|           | that have been marked deleted by updating the db             |
|    4718   | UI test: Fix UI test failures in 4.15                        |
|    4719   | UI Test: Fix UI test failures in master                      |
|    4725   | packaging: update Requirements in README                     |
+-----------+--------------------------------------------------------------+
56 uncategorised issues listed

Old PRs still open

+-----------+--------------------------------------------------------------+-------------+---------------------------+
| PR Number | Title                                                        |     Type    |           Notes           |
+-----------+--------------------------------------------------------------+-------------+---------------------------+
|    3527   | [WIP] [REFRESH] CLOUDSTACK-10106: GPU/vGPU Support on VMware |    Old PR   |  Add label age:1year_plus |
|    3580   | Vmware hypervisor : enhance Mac OS compatibility             |    Old PR   |  Add label age:1year_plus |
|    3595   | [WIP DO NOT MERGE] KVM dynamic VM scaling                    |    Old PR   |  Add label age:1year_plus |
|    3712   | [WORK IN PROGRES - do NOT merge] Replace builtin CentOS 5.x  |    Old PR   |  Add label age:1year_plus |
|           | with 8.0 templates                                           |             |                           |
|    3748   | Systemvm template api                                        |    Old PR   |  Add label age:1year_plus |
|    1257   | CLOUDSTACK-9175: [VMware DRS] Adding new host to DRS cluster | Very old PR | Add label age:2years_plus |
|           | does not participate in load balancing.                      |             |                           |
|    1897   | CLOUDSTACK-9733: Concurrent volume snapshots of a VM are not | Very old PR | Add label age:2years_plus |
|           | allowed and are not limited per host as per the global       |             |                           |
|           | configuration parameter                                      |             |                           |
|           | "concurrent.snapshots.threshold.perhost".                    |             |                           |
|    1906   | CLOUDSTACK-9743 - ODL plugin responds to deleteHost causing  | Very old PR | Add label age:2years_plus |
|           | other plugin in the chain to be ignored                      |             |                           |
|    1965   | CLOUDSTACK-9727 Password reset discrepancy in RVR when one   | Very old PR | Add label age:2years_plus |
|           | of the Rou…                                                  |             |                           |
|    2067   | CLOUDSTACK-9852: This patch implements the storage lb        | Very old PR | Add label age:2years_plus |
|           | feature                                                      |             |                           |
|    2090   | CLOUDSTACK-8415 [VMware] SSVM shutdown during snapshot       | Very old PR | Add label age:2years_plus |
|           | operation results in disks to be left behind                 |             |                           |
|    2231   | [CLOUDSTACK-10039] Adding IOPS/GB offering                   | Very old PR | Add label age:2years_plus |
|    2234   | CLOUDSTACK-10041: Support to use ikev1 for site-to-site VPN  | Very old PR | Add label age:2years_plus |
|           | connections                                                  |             |                           |
|    2275   | CLOUDSTACK-9975: Allow customizing system VM templates for   | Very old PR | Add label age:2years_plus |
|           | SSVM and Console Proxy                                       |             |                           |
|    2290   | WIP: add track id to async api calls                         | Very old PR | Add label age:2years_plus |
|    2338   | [WIP] CLOUDSTACK-8968: UI icon over VM snapshot to deploy    | Very old PR | Add label age:2years_plus |
|           | user instance.                                               |             |                           |
|    2340   | CLOUDSTACK-10106: GPU/vGPU Support on VMware                 | Very old PR | Add label age:2years_plus |
|    2440   | CLOUDSTACK-10260 : Introducing a new API to collect and list | Very old PR | Add label age:2years_plus |
|           | CPU Sockets Metrics information for all Hypervisors.         |             |                           |
|    3036   | CLOUDSTACK-3035: Implemented capabilities for snapshots and  | Very old PR | Add label age:2years_plus |
|           | vm snapshots.                                                |             |                           |
|    3186   | Add possibility to set KVM MTU size for all NIC              | Very old PR | Add label age:2years_plus |
+-----------+--------------------------------------------------------------+-------------+---------------------------+
20 Old PRs listed

