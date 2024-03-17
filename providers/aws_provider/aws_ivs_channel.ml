(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ivs_channel__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ivs_channel__timeouts *)

type aws_ivs_channel = {
  authorized : bool option; [@option]  (** authorized *)
  id : string option; [@option]  (** id *)
  latency_mode : string option; [@option]  (** latency_mode *)
  name : string option; [@option]  (** name *)
  recording_configuration_arn : string option; [@option]
      (** recording_configuration_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  timeouts : aws_ivs_channel__timeouts option;
}
[@@deriving yojson_of]
(** aws_ivs_channel *)

let aws_ivs_channel ?authorized ?id ?latency_mode ?name
    ?recording_configuration_arn ?tags ?tags_all ?type_ ?timeouts
    __resource_id =
  let __resource_type = "aws_ivs_channel" in
  let __resource =
    {
      authorized;
      id;
      latency_mode;
      name;
      recording_configuration_arn;
      tags;
      tags_all;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ivs_channel __resource);
  ()
