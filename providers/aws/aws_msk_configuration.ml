(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_msk_configuration = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kafka_versions : string prop list option; [@option]
      (** kafka_versions *)
  name : string prop;  (** name *)
  server_properties : string prop;  (** server_properties *)
}
[@@deriving yojson_of]
(** aws_msk_configuration *)

let aws_msk_configuration ?description ?id ?kafka_versions ~name
    ~server_properties () : aws_msk_configuration =
  { description; id; kafka_versions; name; server_properties }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  kafka_versions : string list prop;
  latest_revision : float prop;
  name : string prop;
  server_properties : string prop;
}

let make ?description ?id ?kafka_versions ~name ~server_properties
    __id =
  let __type = "aws_msk_configuration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kafka_versions = Prop.computed __type __id "kafka_versions";
       latest_revision = Prop.computed __type __id "latest_revision";
       name = Prop.computed __type __id "name";
       server_properties =
         Prop.computed __type __id "server_properties";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_configuration
        (aws_msk_configuration ?description ?id ?kafka_versions ~name
           ~server_properties ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?kafka_versions ~name
    ~server_properties __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?kafka_versions ~name ~server_properties
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
