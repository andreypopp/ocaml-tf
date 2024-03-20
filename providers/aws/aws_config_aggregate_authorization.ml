(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_config_aggregate_authorization = {
  account_id : string prop;  (** account_id *)
  id : string prop option; [@option]  (** id *)
  region : string prop;  (** region *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_config_aggregate_authorization *)

let aws_config_aggregate_authorization ?id ?tags ?tags_all
    ~account_id ~region () : aws_config_aggregate_authorization =
  { account_id; id; region; tags; tags_all }

type t = {
  account_id : string prop;
  arn : string prop;
  id : string prop;
  region : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~account_id ~region __id =
  let __type = "aws_config_aggregate_authorization" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       region = Prop.computed __type __id "region";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_aggregate_authorization
        (aws_config_aggregate_authorization ?id ?tags ?tags_all
           ~account_id ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~account_id ~region __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~account_id ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
