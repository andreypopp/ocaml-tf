(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_namespace__timeouts = {
  create: string option; [@option] (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete: string option; [@option] (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
} [@@deriving yojson_of]
(** aws_quicksight_namespace__timeouts *)

type aws_quicksight_namespace = {
  aws_account_id: string option; [@option] (** aws_account_id *)
  identity_store: string option; [@option] (** identity_store *)
  namespace: string;  (** namespace *)
  tags: (string * string) list option; [@option] (** tags *)
  timeouts: aws_quicksight_namespace__timeouts option;
} [@@deriving yojson_of]
(** aws_quicksight_namespace *)

let aws_quicksight_namespace ?aws_account_id ?identity_store ?tags ?timeouts ~namespace  __resource_id =
  let __resource_type = "aws_quicksight_namespace" in
  let __resource = {
    aws_account_id;
    identity_store;
    namespace;
    tags;
    timeouts;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_namespace __resource);
  ()
  ;;

