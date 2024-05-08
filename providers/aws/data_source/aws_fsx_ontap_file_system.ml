(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type disk_iops_configuration = {
  iops : float prop;
  mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : disk_iops_configuration) -> ()

let yojson_of_disk_iops_configuration =
  (function
   | { iops = v_iops; mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_iops in
         ("iops", arg) :: bnds
       in
       `Assoc bnds
    : disk_iops_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk_iops_configuration

[@@@deriving.end]

type endpoints__management = {
  dns_name : string prop;
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints__management) -> ()

let yojson_of_endpoints__management =
  (function
   | { dns_name = v_dns_name; ip_addresses = v_ip_addresses } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ip_addresses
           in
           let bnd = "ip_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_name in
         ("dns_name", arg) :: bnds
       in
       `Assoc bnds
    : endpoints__management -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints__management

[@@@deriving.end]

type endpoints__intercluster = {
  dns_name : string prop;
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints__intercluster) -> ()

let yojson_of_endpoints__intercluster =
  (function
   | { dns_name = v_dns_name; ip_addresses = v_ip_addresses } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ip_addresses
           in
           let bnd = "ip_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_name in
         ("dns_name", arg) :: bnds
       in
       `Assoc bnds
    : endpoints__intercluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints__intercluster

[@@@deriving.end]

type endpoints = {
  intercluster : endpoints__intercluster list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  management : endpoints__management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints) -> ()

let yojson_of_endpoints =
  (function
   | { intercluster = v_intercluster; management = v_management } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_management then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoints__management)
               v_management
           in
           let bnd = "management", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_intercluster then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoints__intercluster)
               v_intercluster
           in
           let bnd = "intercluster", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints

[@@@deriving.end]

type aws_fsx_ontap_file_system = {
  id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fsx_ontap_file_system) -> ()

let yojson_of_aws_fsx_ontap_file_system =
  (function
   | { id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_fsx_ontap_file_system -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fsx_ontap_file_system

[@@@deriving.end]

let aws_fsx_ontap_file_system ?tags ~id () :
    aws_fsx_ontap_file_system =
  { id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  automatic_backup_retention_days : float prop;
  daily_automatic_backup_start_time : string prop;
  deployment_type : string prop;
  disk_iops_configuration : disk_iops_configuration list prop;
  dns_name : string prop;
  endpoint_ip_address_range : string prop;
  endpoints : endpoints list prop;
  ha_pairs : float prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preferred_subnet_id : string prop;
  route_table_ids : string list prop;
  storage_capacity : float prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  throughput_capacity : float prop;
  throughput_capacity_per_ha_pair : float prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

let make ?tags ~id __id =
  let __type = "aws_fsx_ontap_file_system" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       automatic_backup_retention_days =
         Prop.computed __type __id "automatic_backup_retention_days";
       daily_automatic_backup_start_time =
         Prop.computed __type __id
           "daily_automatic_backup_start_time";
       deployment_type = Prop.computed __type __id "deployment_type";
       disk_iops_configuration =
         Prop.computed __type __id "disk_iops_configuration";
       dns_name = Prop.computed __type __id "dns_name";
       endpoint_ip_address_range =
         Prop.computed __type __id "endpoint_ip_address_range";
       endpoints = Prop.computed __type __id "endpoints";
       ha_pairs = Prop.computed __type __id "ha_pairs";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       owner_id = Prop.computed __type __id "owner_id";
       preferred_subnet_id =
         Prop.computed __type __id "preferred_subnet_id";
       route_table_ids = Prop.computed __type __id "route_table_ids";
       storage_capacity =
         Prop.computed __type __id "storage_capacity";
       storage_type = Prop.computed __type __id "storage_type";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       throughput_capacity =
         Prop.computed __type __id "throughput_capacity";
       throughput_capacity_per_ha_pair =
         Prop.computed __type __id "throughput_capacity_per_ha_pair";
       vpc_id = Prop.computed __type __id "vpc_id";
       weekly_maintenance_start_time =
         Prop.computed __type __id "weekly_maintenance_start_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fsx_ontap_file_system
        (aws_fsx_ontap_file_system ?tags ~id ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ~id __id =
  let (r : _ Tf_core.resource) = make ?tags ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
