(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type notification = {
  events : string prop list;  (** events *)
  sns_topic : string prop;  (** sns_topic *)
}
[@@deriving yojson_of]
(** notification *)

type aws_glacier_vault = {
  access_policy : string prop option; [@option]  (** access_policy *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  notification : notification list;
}
[@@deriving yojson_of]
(** aws_glacier_vault *)

let notification ~events ~sns_topic () : notification =
  { events; sns_topic }

let aws_glacier_vault ?access_policy ?id ?tags ?tags_all ~name
    ~notification () : aws_glacier_vault =
  { access_policy; id; name; tags; tags_all; notification }

type t = {
  access_policy : string prop;
  arn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?access_policy ?id ?tags ?tags_all ~name ~notification __id
    =
  let __type = "aws_glacier_vault" in
  let __attrs =
    ({
       access_policy = Prop.computed __type __id "access_policy";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glacier_vault
        (aws_glacier_vault ?access_policy ?id ?tags ?tags_all ~name
           ~notification ());
    attrs = __attrs;
  }

let register ?tf_module ?access_policy ?id ?tags ?tags_all ~name
    ~notification __id =
  let (r : _ Tf_core.resource) =
    make ?access_policy ?id ?tags ?tags_all ~name ~notification __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
