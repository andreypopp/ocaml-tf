(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_efs_mount_target__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_efs_mount_target__timeouts *)

type aws_efs_mount_target = {
  file_system_id : string prop;  (** file_system_id *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts : aws_efs_mount_target__timeouts option;
}
[@@deriving yojson_of]
(** aws_efs_mount_target *)

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

let aws_efs_mount_target ?id ?ip_address ?security_groups ?timeouts
    ~file_system_id ~subnet_id __resource_id =
  let __resource_type = "aws_efs_mount_target" in
  let __resource =
    ({
       file_system_id;
       id;
       ip_address;
       security_groups;
       subnet_id;
       timeouts;
     }
      : aws_efs_mount_target)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_efs_mount_target __resource);
  let __resource_attributes =
    ({
       availability_zone_id =
         Prop.computed __resource_type __resource_id
           "availability_zone_id";
       availability_zone_name =
         Prop.computed __resource_type __resource_id
           "availability_zone_name";
       dns_name =
         Prop.computed __resource_type __resource_id "dns_name";
       file_system_arn =
         Prop.computed __resource_type __resource_id
           "file_system_arn";
       file_system_id =
         Prop.computed __resource_type __resource_id "file_system_id";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       mount_target_dns_name =
         Prop.computed __resource_type __resource_id
           "mount_target_dns_name";
       network_interface_id =
         Prop.computed __resource_type __resource_id
           "network_interface_id";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       security_groups =
         Prop.computed __resource_type __resource_id
           "security_groups";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
     }
      : t)
  in
  __resource_attributes
