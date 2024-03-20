(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_secretsmanager_secret_version = {
  id : string prop option; [@option]  (** id *)
  secret_binary : string prop option; [@option]  (** secret_binary *)
  secret_id : string prop;  (** secret_id *)
  secret_string : string prop option; [@option]  (** secret_string *)
  version_stages : string prop list option; [@option]
      (** version_stages *)
}
[@@deriving yojson_of]
(** aws_secretsmanager_secret_version *)

let aws_secretsmanager_secret_version ?id ?secret_binary
    ?secret_string ?version_stages ~secret_id () :
    aws_secretsmanager_secret_version =
  { id; secret_binary; secret_id; secret_string; version_stages }

type t = {
  arn : string prop;
  id : string prop;
  secret_binary : string prop;
  secret_id : string prop;
  secret_string : string prop;
  version_id : string prop;
  version_stages : string list prop;
}

let make ?id ?secret_binary ?secret_string ?version_stages ~secret_id
    __id =
  let __type = "aws_secretsmanager_secret_version" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       secret_binary = Prop.computed __type __id "secret_binary";
       secret_id = Prop.computed __type __id "secret_id";
       secret_string = Prop.computed __type __id "secret_string";
       version_id = Prop.computed __type __id "version_id";
       version_stages = Prop.computed __type __id "version_stages";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_secretsmanager_secret_version
        (aws_secretsmanager_secret_version ?id ?secret_binary
           ?secret_string ?version_stages ~secret_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?secret_binary ?secret_string
    ?version_stages ~secret_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?secret_binary ?secret_string ?version_stages ~secret_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
