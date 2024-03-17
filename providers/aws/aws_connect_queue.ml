(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_queue__outbound_caller_config = {
  outbound_caller_id_name : string prop option; [@option]
      (** outbound_caller_id_name *)
  outbound_caller_id_number_id : string prop option; [@option]
      (** outbound_caller_id_number_id *)
  outbound_flow_id : string prop option; [@option]
      (** outbound_flow_id *)
}
[@@deriving yojson_of]
(** aws_connect_queue__outbound_caller_config *)

type aws_connect_queue = {
  description : string prop option; [@option]  (** description *)
  hours_of_operation_id : string prop;  (** hours_of_operation_id *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  max_contacts : float prop option; [@option]  (** max_contacts *)
  name : string prop;  (** name *)
  quick_connect_ids : string prop list option; [@option]
      (** quick_connect_ids *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  outbound_caller_config :
    aws_connect_queue__outbound_caller_config list;
}
[@@deriving yojson_of]
(** aws_connect_queue *)

type t = {
  arn : string prop;
  description : string prop;
  hours_of_operation_id : string prop;
  id : string prop;
  instance_id : string prop;
  max_contacts : float prop;
  name : string prop;
  queue_id : string prop;
  quick_connect_ids : string list prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_connect_queue ?description ?id ?max_contacts
    ?quick_connect_ids ?status ?tags ?tags_all ~hours_of_operation_id
    ~instance_id ~name ~outbound_caller_config __resource_id =
  let __resource_type = "aws_connect_queue" in
  let __resource =
    ({
       description;
       hours_of_operation_id;
       id;
       instance_id;
       max_contacts;
       name;
       quick_connect_ids;
       status;
       tags;
       tags_all;
       outbound_caller_config;
     }
      : aws_connect_queue)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_queue __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       hours_of_operation_id =
         Prop.computed __resource_type __resource_id
           "hours_of_operation_id";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       max_contacts =
         Prop.computed __resource_type __resource_id "max_contacts";
       name = Prop.computed __resource_type __resource_id "name";
       queue_id =
         Prop.computed __resource_type __resource_id "queue_id";
       quick_connect_ids =
         Prop.computed __resource_type __resource_id
           "quick_connect_ids";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
