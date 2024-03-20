(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?aws_account_id ?identity_store ?tags ?timeouts ~namespace __id =
  let __type = "aws_quicksight_namespace" in
  let __attrs = ({
    arn = Prop.computed __type __id "arn";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    capacity_region = Prop.computed __type __id "capacity_region";
    creation_status = Prop.computed __type __id "creation_status";
    id = Prop.computed __type __id "id";
    identity_store = Prop.computed __type __id "identity_store";
    namespace = Prop.computed __type __id "namespace";
    tags = Prop.computed __type __id "tags";
    tags_all = Prop.computed __type __id "tags_all";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_namespace (aws_quicksight_namespace ?aws_account_id ?identity_store ?tags ?timeouts ~namespace ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ?identity_store ?tags ?timeouts ~namespace __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ?identity_store ?tags ?timeouts ~namespace __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

