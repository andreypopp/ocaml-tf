(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_efs_mount_target = {
  access_point_id : string prop option; [@option]
  file_system_id : string prop option; [@option]
  id : string prop option; [@option]
  mount_target_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_efs_mount_target) -> ()

let yojson_of_aws_efs_mount_target =
  (function
   | {
       access_point_id = v_access_point_id;
       file_system_id = v_file_system_id;
       id = v_id;
       mount_target_id = v_mount_target_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_mount_target_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mount_target_id", arg in
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
         match v_file_system_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_point_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_point_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_efs_mount_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_efs_mount_target

[@@@deriving.end]

let aws_efs_mount_target ?access_point_id ?file_system_id ?id
    ?mount_target_id () : aws_efs_mount_target =
  { access_point_id; file_system_id; id; mount_target_id }

type t = {
  tf_name : string;
  access_point_id : string prop;
  availability_zone_id : string prop;
  availability_zone_name : string prop;
  dns_name : string prop;
  file_system_arn : string prop;
  file_system_id : string prop;
  id : string prop;
  ip_address : string prop;
  mount_target_dns_name : string prop;
  mount_target_id : string prop;
  network_interface_id : string prop;
  owner_id : string prop;
  security_groups : string list prop;
  subnet_id : string prop;
}

let make ?access_point_id ?file_system_id ?id ?mount_target_id __id =
  let __type = "aws_efs_mount_target" in
  let __attrs =
    ({
       tf_name = __id;
       access_point_id = Prop.computed __type __id "access_point_id";
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
       mount_target_id = Prop.computed __type __id "mount_target_id";
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
        (aws_efs_mount_target ?access_point_id ?file_system_id ?id
           ?mount_target_id ());
    attrs = __attrs;
  }

let register ?tf_module ?access_point_id ?file_system_id ?id
    ?mount_target_id __id =
  let (r : _ Tf_core.resource) =
    make ?access_point_id ?file_system_id ?id ?mount_target_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
