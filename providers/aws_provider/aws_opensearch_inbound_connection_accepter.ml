(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_opensearch_inbound_connection_accepter__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_opensearch_inbound_connection_accepter__timeouts *)

type aws_opensearch_inbound_connection_accepter = {
  connection_id : string;  (** connection_id *)
  timeouts :
    aws_opensearch_inbound_connection_accepter__timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearch_inbound_connection_accepter *)

let aws_opensearch_inbound_connection_accepter ?timeouts
    ~connection_id __resource_id =
  let __resource_type =
    "aws_opensearch_inbound_connection_accepter"
  in
  let __resource = { connection_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_inbound_connection_accepter __resource);
  ()
