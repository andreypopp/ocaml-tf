(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_chime_voice_connector = {
  aws_region : string prop option; [@option]  (** aws_region *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  require_encryption : bool prop;  (** require_encryption *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector *)

let aws_chime_voice_connector ?aws_region ?id ?tags ?tags_all ~name
    ~require_encryption () : aws_chime_voice_connector =
  { aws_region; id; name; require_encryption; tags; tags_all }

type t = {
  arn : string prop;
  aws_region : string prop;
  id : string prop;
  name : string prop;
  outbound_host_name : string prop;
  require_encryption : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?aws_region ?id ?tags ?tags_all ~name ~require_encryption
    __id =
  let __type = "aws_chime_voice_connector" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       aws_region = Prop.computed __type __id "aws_region";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       outbound_host_name =
         Prop.computed __type __id "outbound_host_name";
       require_encryption =
         Prop.computed __type __id "require_encryption";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chime_voice_connector
        (aws_chime_voice_connector ?aws_region ?id ?tags ?tags_all
           ~name ~require_encryption ());
    attrs = __attrs;
  }

let register ?tf_module ?aws_region ?id ?tags ?tags_all ~name
    ~require_encryption __id =
  let (r : _ Tf_core.resource) =
    make ?aws_region ?id ?tags ?tags_all ~name ~require_encryption
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
