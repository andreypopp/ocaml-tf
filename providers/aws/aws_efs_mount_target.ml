(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_efs_mount_target = {
  file_system_id : string prop;  (** file_system_id *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_efs_mount_target *)

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
