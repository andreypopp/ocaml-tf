(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lexv2models_bot__data_privacy = {
  child_directed : bool;  (** child_directed *)
}
[@@deriving yojson_of]
(** aws_lexv2models_bot__data_privacy *)

type aws_lexv2models_bot__members = {
  alias_id : string;  (** alias_id *)
  alias_name : string;  (** alias_name *)
  id : string;  (** id *)
  name : string;  (** name *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** aws_lexv2models_bot__members *)

type aws_lexv2models_bot__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_lexv2models_bot__timeouts *)

type aws_lexv2models_bot = {
  description : string option; [@option]  (** description *)
  idle_session_ttl_in_seconds : float;
      (** idle_session_ttl_in_seconds *)
  name : string;  (** name *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  test_bot_alias_tags : (string * string) list option; [@option]
      (** test_bot_alias_tags *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  data_privacy : aws_lexv2models_bot__data_privacy list;
  members : aws_lexv2models_bot__members list;
  timeouts : aws_lexv2models_bot__timeouts option;
}
[@@deriving yojson_of]
(** aws_lexv2models_bot *)

let aws_lexv2models_bot ?description ?tags ?test_bot_alias_tags
    ?type_ ?timeouts ~idle_session_ttl_in_seconds ~name ~role_arn
    ~data_privacy ~members __resource_id =
  let __resource_type = "aws_lexv2models_bot" in
  let __resource =
    {
      description;
      idle_session_ttl_in_seconds;
      name;
      role_arn;
      tags;
      test_bot_alias_tags;
      type_;
      data_privacy;
      members;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lexv2models_bot __resource);
  ()
