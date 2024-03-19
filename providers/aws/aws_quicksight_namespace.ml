(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create: string  prop option; [@option] (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete: string  prop option; [@option] (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
} [@@deriving yojson_of]
(** timeouts *)

type aws_quicksight_namespace = {
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  identity_store: string  prop option; [@option] (** identity_store *)
  namespace: string prop;  (** namespace *)
  tags: (string * string   prop) list option; [@option] (** tags *)
  timeouts: timeouts option;
} [@@deriving yojson_of]
(** aws_quicksight_namespace *)

let timeouts ?create ?delete () =
  ({
    create;
    delete;
  } : timeouts);;

let aws_quicksight_namespace ?aws_account_id ?identity_store ?tags ?timeouts ~namespace () =
  ({
    aws_account_id;
    identity_store;
    namespace;
    tags;
    timeouts;
  } : aws_quicksight_namespace);;

type t = {
  arn: string prop;
  aws_account_id: string prop;
  capacity_region: string prop;
  creation_status: string prop;
  id: string prop;
  identity_store: string prop;
  namespace: string prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
}

let register ?tf_module ?aws_account_id ?identity_store ?tags ?timeouts ~namespace __resource_id =
  let __resource_type = "aws_quicksight_namespace" in
  let __resource = aws_quicksight_namespace ?aws_account_id ?identity_store ?tags ?timeouts ~namespace () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_namespace __resource);
  let __resource_attributes = ({
    arn = Prop.computed __resource_type __resource_id "arn";
    aws_account_id = Prop.computed __resource_type __resource_id "aws_account_id";
    capacity_region = Prop.computed __resource_type __resource_id "capacity_region";
    creation_status = Prop.computed __resource_type __resource_id "creation_status";
    id = Prop.computed __resource_type __resource_id "id";
    identity_store = Prop.computed __resource_type __resource_id "identity_store";
    namespace = Prop.computed __resource_type __resource_id "namespace";
    tags = Prop.computed __resource_type __resource_id "tags";
    tags_all = Prop.computed __resource_type __resource_id "tags_all";
  } : t) in
  __resource_attributes;;

