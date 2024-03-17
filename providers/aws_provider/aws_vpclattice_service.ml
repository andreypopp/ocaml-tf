(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpclattice_service__timeouts *)

type aws_vpclattice_service__dns_entry = {
  domain_name : string prop;  (** domain_name *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
}
[@@deriving yojson_of]

type aws_vpclattice_service = {
  auth_type : string prop option; [@option]  (** auth_type *)
  certificate_arn : string prop option; [@option]
      (** certificate_arn *)
  custom_domain_name : string prop option; [@option]
      (** custom_domain_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_vpclattice_service__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_service *)

type t = {
  arn : string prop;
  auth_type : string prop;
  certificate_arn : string prop;
  custom_domain_name : string prop;
  dns_entry : aws_vpclattice_service__dns_entry list prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_vpclattice_service ?auth_type ?certificate_arn
    ?custom_domain_name ?id ?tags ?tags_all ?timeouts ~name
    __resource_id =
  let __resource_type = "aws_vpclattice_service" in
  let __resource =
    ({
       auth_type;
       certificate_arn;
       custom_domain_name;
       id;
       name;
       tags;
       tags_all;
       timeouts;
     }
      : aws_vpclattice_service)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_service __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       auth_type =
         Prop.computed __resource_type __resource_id "auth_type";
       certificate_arn =
         Prop.computed __resource_type __resource_id
           "certificate_arn";
       custom_domain_name =
         Prop.computed __resource_type __resource_id
           "custom_domain_name";
       dns_entry =
         Prop.computed __resource_type __resource_id "dns_entry";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
