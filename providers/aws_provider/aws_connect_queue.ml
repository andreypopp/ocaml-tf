(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_queue__outbound_caller_config = {
  outbound_caller_id_name : string option; [@option]
      (** outbound_caller_id_name *)
  outbound_caller_id_number_id : string option; [@option]
      (** outbound_caller_id_number_id *)
  outbound_flow_id : string option; [@option]  (** outbound_flow_id *)
}
[@@deriving yojson_of]
(** aws_connect_queue__outbound_caller_config *)

type aws_connect_queue = {
  description : string option; [@option]  (** description *)
  hours_of_operation_id : string;  (** hours_of_operation_id *)
  instance_id : string;  (** instance_id *)
  max_contacts : float option; [@option]  (** max_contacts *)
  name : string;  (** name *)
  quick_connect_ids : string list option; [@option]
      (** quick_connect_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  outbound_caller_config :
    aws_connect_queue__outbound_caller_config list;
}
[@@deriving yojson_of]
(** aws_connect_queue *)

let aws_connect_queue ?description ?max_contacts ?quick_connect_ids
    ?tags ~hours_of_operation_id ~instance_id ~name
    ~outbound_caller_config __resource_id =
  let __resource_type = "aws_connect_queue" in
  let __resource =
    {
      description;
      hours_of_operation_id;
      instance_id;
      max_contacts;
      name;
      quick_connect_ids;
      tags;
      outbound_caller_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_queue __resource);
  ()
