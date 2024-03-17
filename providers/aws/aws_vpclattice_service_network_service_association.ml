(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_service_network_service_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpclattice_service_network_service_association__timeouts *)

type aws_vpclattice_service_network_service_association__dns_entry = {
  domain_name : string prop;  (** domain_name *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
}
[@@deriving yojson_of]

type aws_vpclattice_service_network_service_association = {
  id : string prop option; [@option]  (** id *)
  service_identifier : string prop;  (** service_identifier *)
  service_network_identifier : string prop;
      (** service_network_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts :
    aws_vpclattice_service_network_service_association__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_vpclattice_service_network_service_association *)

type t = {
  arn : string prop;
  created_by : string prop;
  custom_domain_name : string prop;
  dns_entry :
    aws_vpclattice_service_network_service_association__dns_entry
    list
    prop;
  id : string prop;
  service_identifier : string prop;
  service_network_identifier : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_vpclattice_service_network_service_association ?id ?tags
    ?tags_all ?timeouts ~service_identifier
    ~service_network_identifier __resource_id =
  let __resource_type =
    "aws_vpclattice_service_network_service_association"
  in
  let __resource =
    ({
       id;
       service_identifier;
       service_network_identifier;
       tags;
       tags_all;
       timeouts;
     }
      : aws_vpclattice_service_network_service_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_service_network_service_association
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_by =
         Prop.computed __resource_type __resource_id "created_by";
       custom_domain_name =
         Prop.computed __resource_type __resource_id
           "custom_domain_name";
       dns_entry =
         Prop.computed __resource_type __resource_id "dns_entry";
       id = Prop.computed __resource_type __resource_id "id";
       service_identifier =
         Prop.computed __resource_type __resource_id
           "service_identifier";
       service_network_identifier =
         Prop.computed __resource_type __resource_id
           "service_network_identifier";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
