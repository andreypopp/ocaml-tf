(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearch_inbound_connection_accepter__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_opensearch_inbound_connection_accepter__timeouts *)

type aws_opensearch_inbound_connection_accepter = {
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
  timeouts :
    aws_opensearch_inbound_connection_accepter__timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearch_inbound_connection_accepter *)

type t = {
  connection_id : string prop;
  connection_status : string prop;
  id : string prop;
}

let aws_opensearch_inbound_connection_accepter ?id ?timeouts
    ~connection_id __resource_id =
  let __resource_type =
    "aws_opensearch_inbound_connection_accepter"
  in
  let __resource =
    ({ connection_id; id; timeouts }
      : aws_opensearch_inbound_connection_accepter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_inbound_connection_accepter __resource);
  let __resource_attributes =
    ({
       connection_id =
         Prop.computed __resource_type __resource_id "connection_id";
       connection_status =
         Prop.computed __resource_type __resource_id
           "connection_status";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
