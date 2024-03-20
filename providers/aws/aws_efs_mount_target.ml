(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_efs_mount_target = {
  file_system_id : string prop;
  id : string prop option; [@option]
  ip_address : string prop option; [@option]
  security_groups : string prop list option; [@option]
  subnet_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_efs_mount_target) -> ()

let yojson_of_aws_efs_mount_target =
  (function
   | {
       file_system_id = v_file_system_id;
       id = v_id;
       ip_address = v_ip_address;
       security_groups = v_security_groups;
       subnet_id = v_subnet_id;
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
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         match v_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_file_system_id
         in
         ("file_system_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_efs_mount_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_efs_mount_target

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_efs_mount_target ?id ?ip_address ?security_groups ?timeouts
    ~file_system_id ~subnet_id () : aws_efs_mount_target =
  {
    file_system_id;
    id;
    ip_address;
    security_groups;
    subnet_id;
    timeouts;
  }

type t = {
  availability_zone_id : string prop;
  availability_zone_name : string prop;
  dns_name : string prop;
  file_system_arn : string prop;
  file_system_id : string prop;
  id : string prop;
  ip_address : string prop;
  mount_target_dns_name : string prop;
  network_interface_id : string prop;
  owner_id : string prop;
  security_groups : string list prop;
  subnet_id : string prop;
}

let make ?id ?ip_address ?security_groups ?timeouts ~file_system_id
    ~subnet_id __id =
  let __type = "aws_efs_mount_target" in
  let __attrs =
    ({
       availability_zone_id =
         Prop.computed __type __id "availability_zone_id";
       availability_zone_name =
         Prop.computed __type __id "availability_zone_name";
       dns_name = Prop.computed __type __id "dns_name";
       file_system_arn = Prop.computed __type __id "file_system_arn";
       file_system_id = Prop.computed __type __id "file_system_id";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       mount_target_dns_name =
         Prop.computed __type __id "mount_target_dns_name";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       owner_id = Prop.computed __type __id "owner_id";
       security_groups = Prop.computed __type __id "security_groups";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_efs_mount_target
        (aws_efs_mount_target ?id ?ip_address ?security_groups
           ?timeouts ~file_system_id ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_address ?security_groups ?timeouts
    ~file_system_id ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ip_address ?security_groups ?timeouts ~file_system_id
      ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
