(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_service_network_vpc_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpclattice_service_network_vpc_association__timeouts *)

type aws_vpclattice_service_network_vpc_association = {
  id : string prop option; [@option]  (** id *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  service_network_identifier : string prop;
      (** service_network_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_identifier : string prop;  (** vpc_identifier *)
  timeouts :
    aws_vpclattice_service_network_vpc_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_service_network_vpc_association *)

type t = {
  arn : string prop;
  created_by : string prop;
  id : string prop;
  security_group_ids : string list prop;
  service_network_identifier : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_identifier : string prop;
}

let aws_vpclattice_service_network_vpc_association ?id
    ?security_group_ids ?tags ?tags_all ?timeouts
    ~service_network_identifier ~vpc_identifier __resource_id =
  let __resource_type =
    "aws_vpclattice_service_network_vpc_association"
  in
  let __resource =
    ({
       id;
       security_group_ids;
       service_network_identifier;
       tags;
       tags_all;
       vpc_identifier;
       timeouts;
     }
      : aws_vpclattice_service_network_vpc_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_service_network_vpc_association
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_by =
         Prop.computed __resource_type __resource_id "created_by";
       id = Prop.computed __resource_type __resource_id "id";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       service_network_identifier =
         Prop.computed __resource_type __resource_id
           "service_network_identifier";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_identifier =
         Prop.computed __resource_type __resource_id "vpc_identifier";
     }
      : t)
  in
  __resource_attributes
