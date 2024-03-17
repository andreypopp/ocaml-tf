(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_instance_connect_endpoint__timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** aws_ec2_instance_connect_endpoint__timeouts *)

type aws_ec2_instance_connect_endpoint = {
  preserve_client_ip : bool prop option; [@option]
      (** preserve_client_ip *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : aws_ec2_instance_connect_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_instance_connect_endpoint *)

type t = {
  arn : string prop;
  availability_zone : string prop;
  dns_name : string prop;
  fips_dns_name : string prop;
  id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preserve_client_ip : bool prop;
  security_group_ids : string list prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let aws_ec2_instance_connect_endpoint ?preserve_client_ip
    ?security_group_ids ?tags ?timeouts ~subnet_id __resource_id =
  let __resource_type = "aws_ec2_instance_connect_endpoint" in
  let __resource =
    ({
       preserve_client_ip;
       security_group_ids;
       subnet_id;
       tags;
       timeouts;
     }
      : aws_ec2_instance_connect_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_instance_connect_endpoint __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       dns_name =
         Prop.computed __resource_type __resource_id "dns_name";
       fips_dns_name =
         Prop.computed __resource_type __resource_id "fips_dns_name";
       id = Prop.computed __resource_type __resource_id "id";
       network_interface_ids =
         Prop.computed __resource_type __resource_id
           "network_interface_ids";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       preserve_client_ip =
         Prop.computed __resource_type __resource_id
           "preserve_client_ip";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
