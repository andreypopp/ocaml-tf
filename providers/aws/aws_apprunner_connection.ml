(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apprunner_connection = {
  connection_name : string prop;  (** connection_name *)
  id : string prop option; [@option]  (** id *)
  provider_type : string prop;  (** provider_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_apprunner_connection *)

let aws_apprunner_connection ?id ?tags ?tags_all ~connection_name
    ~provider_type () : aws_apprunner_connection =
  { connection_name; id; provider_type; tags; tags_all }

type t = {
  arn : string prop;
  connection_name : string prop;
  id : string prop;
  provider_type : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~connection_name ~provider_type __id =
  let __type = "aws_apprunner_connection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       connection_name = Prop.computed __type __id "connection_name";
       id = Prop.computed __type __id "id";
       provider_type = Prop.computed __type __id "provider_type";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apprunner_connection
        (aws_apprunner_connection ?id ?tags ?tags_all
           ~connection_name ~provider_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~connection_name
    ~provider_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~connection_name ~provider_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
