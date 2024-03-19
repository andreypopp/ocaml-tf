(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_transit_gateway_route_table_attachment = {
  id : string prop option; [@option]  (** id *)
  peering_id : string prop;  (** peering_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_route_table_arn : string prop;
      (** transit_gateway_route_table_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_route_table_attachment *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_networkmanager_transit_gateway_route_table_attachment ?id
    ?tags ?tags_all ?timeouts ~peering_id
    ~transit_gateway_route_table_arn () :
    aws_networkmanager_transit_gateway_route_table_attachment =
  {
    id;
    peering_id;
    tags;
    tags_all;
    transit_gateway_route_table_arn;
    timeouts;
  }

type t = {
  arn : string prop;
  attachment_policy_rule_number : float prop;
  attachment_type : string prop;
  core_network_arn : string prop;
  core_network_id : string prop;
  edge_location : string prop;
  id : string prop;
  owner_account_id : string prop;
  peering_id : string prop;
  resource_arn : string prop;
  segment_name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_route_table_arn : string prop;
}

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~peering_id
    ~transit_gateway_route_table_arn __resource_id =
  let __resource_type =
    "aws_networkmanager_transit_gateway_route_table_attachment"
  in
  let __resource =
    aws_networkmanager_transit_gateway_route_table_attachment ?id
      ?tags ?tags_all ?timeouts ~peering_id
      ~transit_gateway_route_table_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_transit_gateway_route_table_attachment
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       attachment_policy_rule_number =
         Prop.computed __resource_type __resource_id
           "attachment_policy_rule_number";
       attachment_type =
         Prop.computed __resource_type __resource_id
           "attachment_type";
       core_network_arn =
         Prop.computed __resource_type __resource_id
           "core_network_arn";
       core_network_id =
         Prop.computed __resource_type __resource_id
           "core_network_id";
       edge_location =
         Prop.computed __resource_type __resource_id "edge_location";
       id = Prop.computed __resource_type __resource_id "id";
       owner_account_id =
         Prop.computed __resource_type __resource_id
           "owner_account_id";
       peering_id =
         Prop.computed __resource_type __resource_id "peering_id";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
       segment_name =
         Prop.computed __resource_type __resource_id "segment_name";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       transit_gateway_route_table_arn =
         Prop.computed __resource_type __resource_id
           "transit_gateway_route_table_arn";
     }
      : t)
  in
  __resource_attributes
