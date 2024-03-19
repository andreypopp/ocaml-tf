(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_opensearch_inbound_connection_accepter = {
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearch_inbound_connection_accepter *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_opensearch_inbound_connection_accepter ?id ?timeouts
    ~connection_id () : aws_opensearch_inbound_connection_accepter =
  { connection_id; id; timeouts }

type t = {
  connection_id : string prop;
  connection_status : string prop;
  id : string prop;
}

let register ?tf_module ?id ?timeouts ~connection_id __resource_id =
  let __resource_type =
    "aws_opensearch_inbound_connection_accepter"
  in
  let __resource =
    aws_opensearch_inbound_connection_accepter ?id ?timeouts
      ~connection_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
