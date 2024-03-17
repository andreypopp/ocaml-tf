(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_policy__timeouts = {
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_iot_policy__timeouts *)

type aws_iot_policy = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  policy : string;  (** policy *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_iot_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_iot_policy *)

let aws_iot_policy ?id ?tags ?tags_all ?timeouts ~name ~policy
    __resource_id =
  let __resource_type = "aws_iot_policy" in
  let __resource = { id; name; policy; tags; tags_all; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_policy __resource);
  ()
