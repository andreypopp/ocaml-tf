(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_permission_set__timeouts = {
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_permission_set__timeouts *)

type aws_ssoadmin_permission_set = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  instance_arn : string;  (** instance_arn *)
  name : string;  (** name *)
  relay_state : string option; [@option]  (** relay_state *)
  session_duration : string option; [@option]
      (** session_duration *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_ssoadmin_permission_set__timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_permission_set *)

let aws_ssoadmin_permission_set ?description ?id ?relay_state
    ?session_duration ?tags ?tags_all ?timeouts ~instance_arn ~name
    __resource_id =
  let __resource_type = "aws_ssoadmin_permission_set" in
  let __resource =
    {
      description;
      id;
      instance_arn;
      name;
      relay_state;
      session_duration;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_permission_set __resource);
  ()
