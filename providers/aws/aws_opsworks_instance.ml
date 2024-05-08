(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ebs_block_device = {
  delete_on_termination : bool prop option; [@option]
  device_name : string prop;
  iops : float prop option; [@option]
  snapshot_id : string prop option; [@option]
  volume_size : float prop option; [@option]
  volume_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ebs_block_device) -> ()

let yojson_of_ebs_block_device =
  (function
   | {
       delete_on_termination = v_delete_on_termination;
       device_name = v_device_name;
       iops = v_iops;
       snapshot_id = v_snapshot_id;
       volume_size = v_volume_size;
       volume_type = v_volume_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volume_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_volume_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volume_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       let bnds =
         match v_delete_on_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_on_termination", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ebs_block_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ebs_block_device

[@@@deriving.end]

type ephemeral_block_device = {
  device_name : string prop;
  virtual_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ephemeral_block_device) -> ()

let yojson_of_ephemeral_block_device =
  (function
   | { device_name = v_device_name; virtual_name = v_virtual_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_virtual_name in
         ("virtual_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       `Assoc bnds
    : ephemeral_block_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ephemeral_block_device

[@@@deriving.end]

type root_block_device = {
  delete_on_termination : bool prop option; [@option]
  iops : float prop option; [@option]
  volume_size : float prop option; [@option]
  volume_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : root_block_device) -> ()

let yojson_of_root_block_device =
  (function
   | {
       delete_on_termination = v_delete_on_termination;
       iops = v_iops;
       volume_size = v_volume_size;
       volume_type = v_volume_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volume_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_volume_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volume_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_on_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_on_termination", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : root_block_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_root_block_device

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_opsworks_instance = {
  agent_version : string prop option; [@option]
  ami_id : string prop option; [@option]
  architecture : string prop option; [@option]
  auto_scaling_type : string prop option; [@option]
  availability_zone : string prop option; [@option]
  created_at : string prop option; [@option]
  delete_ebs : bool prop option; [@option]
  delete_eip : bool prop option; [@option]
  ebs_optimized : bool prop option; [@option]
  ecs_cluster_arn : string prop option; [@option]
  elastic_ip : string prop option; [@option]
  hostname : string prop option; [@option]
  id : string prop option; [@option]
  infrastructure_class : string prop option; [@option]
  install_updates_on_boot : bool prop option; [@option]
  instance_profile_arn : string prop option; [@option]
  instance_type : string prop option; [@option]
  layer_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  os : string prop option; [@option]
  root_device_type : string prop option; [@option]
  security_group_ids : string prop list option; [@option]
  ssh_key_name : string prop option; [@option]
  stack_id : string prop;
  state : string prop option; [@option]
  status : string prop option; [@option]
  subnet_id : string prop option; [@option]
  tenancy : string prop option; [@option]
  virtualization_type : string prop option; [@option]
  ebs_block_device : ebs_block_device list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ephemeral_block_device : ephemeral_block_device list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  root_block_device : root_block_device list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opsworks_instance) -> ()

let yojson_of_aws_opsworks_instance =
  (function
   | {
       agent_version = v_agent_version;
       ami_id = v_ami_id;
       architecture = v_architecture;
       auto_scaling_type = v_auto_scaling_type;
       availability_zone = v_availability_zone;
       created_at = v_created_at;
       delete_ebs = v_delete_ebs;
       delete_eip = v_delete_eip;
       ebs_optimized = v_ebs_optimized;
       ecs_cluster_arn = v_ecs_cluster_arn;
       elastic_ip = v_elastic_ip;
       hostname = v_hostname;
       id = v_id;
       infrastructure_class = v_infrastructure_class;
       install_updates_on_boot = v_install_updates_on_boot;
       instance_profile_arn = v_instance_profile_arn;
       instance_type = v_instance_type;
       layer_ids = v_layer_ids;
       os = v_os;
       root_device_type = v_root_device_type;
       security_group_ids = v_security_group_ids;
       ssh_key_name = v_ssh_key_name;
       stack_id = v_stack_id;
       state = v_state;
       status = v_status;
       subnet_id = v_subnet_id;
       tenancy = v_tenancy;
       virtualization_type = v_virtualization_type;
       ebs_block_device = v_ebs_block_device;
       ephemeral_block_device = v_ephemeral_block_device;
       root_block_device = v_root_block_device;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_root_block_device then bnds
         else
           let arg =
             (yojson_of_list yojson_of_root_block_device)
               v_root_block_device
           in
           let bnd = "root_block_device", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ephemeral_block_device then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ephemeral_block_device)
               v_ephemeral_block_device
           in
           let bnd = "ephemeral_block_device", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ebs_block_device then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ebs_block_device)
               v_ebs_block_device
           in
           let bnd = "ebs_block_device", arg in
           bnd :: bnds
       in
       let bnds =
         match v_virtualization_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtualization_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tenancy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenancy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stack_id in
         ("stack_id", arg) :: bnds
       in
       let bnds =
         match v_ssh_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssh_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_root_device_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "root_device_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_layer_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_layer_ids
           in
           let bnd = "layer_ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_profile_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_profile_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_install_updates_on_boot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "install_updates_on_boot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_infrastructure_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "infrastructure_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elastic_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elastic_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ecs_cluster_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ecs_cluster_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ebs_optimized with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ebs_optimized", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_eip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_eip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_ebs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_ebs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_created_at with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "created_at", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_scaling_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_scaling_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_architecture with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "architecture", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ami_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ami_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_agent_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "agent_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_opsworks_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opsworks_instance

[@@@deriving.end]

let ebs_block_device ?delete_on_termination ?iops ?snapshot_id
    ?volume_size ?volume_type ~device_name () : ebs_block_device =
  {
    delete_on_termination;
    device_name;
    iops;
    snapshot_id;
    volume_size;
    volume_type;
  }

let ephemeral_block_device ~device_name ~virtual_name () :
    ephemeral_block_device =
  { device_name; virtual_name }

let root_block_device ?delete_on_termination ?iops ?volume_size
    ?volume_type () : root_block_device =
  { delete_on_termination; iops; volume_size; volume_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_opsworks_instance ?agent_version ?ami_id ?architecture
    ?auto_scaling_type ?availability_zone ?created_at ?delete_ebs
    ?delete_eip ?ebs_optimized ?ecs_cluster_arn ?elastic_ip ?hostname
    ?id ?infrastructure_class ?install_updates_on_boot
    ?instance_profile_arn ?instance_type ?os ?root_device_type
    ?security_group_ids ?ssh_key_name ?state ?status ?subnet_id
    ?tenancy ?virtualization_type ?timeouts ~layer_ids ~stack_id
    ~ebs_block_device ~ephemeral_block_device ~root_block_device () :
    aws_opsworks_instance =
  {
    agent_version;
    ami_id;
    architecture;
    auto_scaling_type;
    availability_zone;
    created_at;
    delete_ebs;
    delete_eip;
    ebs_optimized;
    ecs_cluster_arn;
    elastic_ip;
    hostname;
    id;
    infrastructure_class;
    install_updates_on_boot;
    instance_profile_arn;
    instance_type;
    layer_ids;
    os;
    root_device_type;
    security_group_ids;
    ssh_key_name;
    stack_id;
    state;
    status;
    subnet_id;
    tenancy;
    virtualization_type;
    ebs_block_device;
    ephemeral_block_device;
    root_block_device;
    timeouts;
  }

type t = {
  tf_name : string;
  agent_version : string prop;
  ami_id : string prop;
  architecture : string prop;
  auto_scaling_type : string prop;
  availability_zone : string prop;
  created_at : string prop;
  delete_ebs : bool prop;
  delete_eip : bool prop;
  ebs_optimized : bool prop;
  ec2_instance_id : string prop;
  ecs_cluster_arn : string prop;
  elastic_ip : string prop;
  hostname : string prop;
  id : string prop;
  infrastructure_class : string prop;
  install_updates_on_boot : bool prop;
  instance_profile_arn : string prop;
  instance_type : string prop;
  last_service_error_id : string prop;
  layer_ids : string list prop;
  os : string prop;
  platform : string prop;
  private_dns : string prop;
  private_ip : string prop;
  public_dns : string prop;
  public_ip : string prop;
  registered_by : string prop;
  reported_agent_version : string prop;
  reported_os_family : string prop;
  reported_os_name : string prop;
  reported_os_version : string prop;
  root_device_type : string prop;
  root_device_volume_id : string prop;
  security_group_ids : string list prop;
  ssh_host_dsa_key_fingerprint : string prop;
  ssh_host_rsa_key_fingerprint : string prop;
  ssh_key_name : string prop;
  stack_id : string prop;
  state : string prop;
  status : string prop;
  subnet_id : string prop;
  tenancy : string prop;
  virtualization_type : string prop;
}

let make ?agent_version ?ami_id ?architecture ?auto_scaling_type
    ?availability_zone ?created_at ?delete_ebs ?delete_eip
    ?ebs_optimized ?ecs_cluster_arn ?elastic_ip ?hostname ?id
    ?infrastructure_class ?install_updates_on_boot
    ?instance_profile_arn ?instance_type ?os ?root_device_type
    ?security_group_ids ?ssh_key_name ?state ?status ?subnet_id
    ?tenancy ?virtualization_type ?timeouts ~layer_ids ~stack_id
    ~ebs_block_device ~ephemeral_block_device ~root_block_device __id
    =
  let __type = "aws_opsworks_instance" in
  let __attrs =
    ({
       tf_name = __id;
       agent_version = Prop.computed __type __id "agent_version";
       ami_id = Prop.computed __type __id "ami_id";
       architecture = Prop.computed __type __id "architecture";
       auto_scaling_type =
         Prop.computed __type __id "auto_scaling_type";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       created_at = Prop.computed __type __id "created_at";
       delete_ebs = Prop.computed __type __id "delete_ebs";
       delete_eip = Prop.computed __type __id "delete_eip";
       ebs_optimized = Prop.computed __type __id "ebs_optimized";
       ec2_instance_id = Prop.computed __type __id "ec2_instance_id";
       ecs_cluster_arn = Prop.computed __type __id "ecs_cluster_arn";
       elastic_ip = Prop.computed __type __id "elastic_ip";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       infrastructure_class =
         Prop.computed __type __id "infrastructure_class";
       install_updates_on_boot =
         Prop.computed __type __id "install_updates_on_boot";
       instance_profile_arn =
         Prop.computed __type __id "instance_profile_arn";
       instance_type = Prop.computed __type __id "instance_type";
       last_service_error_id =
         Prop.computed __type __id "last_service_error_id";
       layer_ids = Prop.computed __type __id "layer_ids";
       os = Prop.computed __type __id "os";
       platform = Prop.computed __type __id "platform";
       private_dns = Prop.computed __type __id "private_dns";
       private_ip = Prop.computed __type __id "private_ip";
       public_dns = Prop.computed __type __id "public_dns";
       public_ip = Prop.computed __type __id "public_ip";
       registered_by = Prop.computed __type __id "registered_by";
       reported_agent_version =
         Prop.computed __type __id "reported_agent_version";
       reported_os_family =
         Prop.computed __type __id "reported_os_family";
       reported_os_name =
         Prop.computed __type __id "reported_os_name";
       reported_os_version =
         Prop.computed __type __id "reported_os_version";
       root_device_type =
         Prop.computed __type __id "root_device_type";
       root_device_volume_id =
         Prop.computed __type __id "root_device_volume_id";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       ssh_host_dsa_key_fingerprint =
         Prop.computed __type __id "ssh_host_dsa_key_fingerprint";
       ssh_host_rsa_key_fingerprint =
         Prop.computed __type __id "ssh_host_rsa_key_fingerprint";
       ssh_key_name = Prop.computed __type __id "ssh_key_name";
       stack_id = Prop.computed __type __id "stack_id";
       state = Prop.computed __type __id "state";
       status = Prop.computed __type __id "status";
       subnet_id = Prop.computed __type __id "subnet_id";
       tenancy = Prop.computed __type __id "tenancy";
       virtualization_type =
         Prop.computed __type __id "virtualization_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opsworks_instance
        (aws_opsworks_instance ?agent_version ?ami_id ?architecture
           ?auto_scaling_type ?availability_zone ?created_at
           ?delete_ebs ?delete_eip ?ebs_optimized ?ecs_cluster_arn
           ?elastic_ip ?hostname ?id ?infrastructure_class
           ?install_updates_on_boot ?instance_profile_arn
           ?instance_type ?os ?root_device_type ?security_group_ids
           ?ssh_key_name ?state ?status ?subnet_id ?tenancy
           ?virtualization_type ?timeouts ~layer_ids ~stack_id
           ~ebs_block_device ~ephemeral_block_device
           ~root_block_device ());
    attrs = __attrs;
  }

let register ?tf_module ?agent_version ?ami_id ?architecture
    ?auto_scaling_type ?availability_zone ?created_at ?delete_ebs
    ?delete_eip ?ebs_optimized ?ecs_cluster_arn ?elastic_ip ?hostname
    ?id ?infrastructure_class ?install_updates_on_boot
    ?instance_profile_arn ?instance_type ?os ?root_device_type
    ?security_group_ids ?ssh_key_name ?state ?status ?subnet_id
    ?tenancy ?virtualization_type ?timeouts ~layer_ids ~stack_id
    ~ebs_block_device ~ephemeral_block_device ~root_block_device __id
    =
  let (r : _ Tf_core.resource) =
    make ?agent_version ?ami_id ?architecture ?auto_scaling_type
      ?availability_zone ?created_at ?delete_ebs ?delete_eip
      ?ebs_optimized ?ecs_cluster_arn ?elastic_ip ?hostname ?id
      ?infrastructure_class ?install_updates_on_boot
      ?instance_profile_arn ?instance_type ?os ?root_device_type
      ?security_group_ids ?ssh_key_name ?state ?status ?subnet_id
      ?tenancy ?virtualization_type ?timeouts ~layer_ids ~stack_id
      ~ebs_block_device ~ephemeral_block_device ~root_block_device
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
