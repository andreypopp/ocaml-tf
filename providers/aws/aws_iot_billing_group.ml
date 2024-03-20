(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type properties = {
  description : string prop option; [@option]  (** description *)
}
[@@deriving yojson_of]
(** properties *)

type metadata = { creation_date : string prop  (** creation_date *) }
[@@deriving yojson_of]

type aws_iot_billing_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  properties : properties list;
}
[@@deriving yojson_of]
(** aws_iot_billing_group *)

let properties ?description () : properties = { description }

let aws_iot_billing_group ?id ?tags ?tags_all ~name ~properties () :
    aws_iot_billing_group =
  { id; name; tags; tags_all; properties }

type t = {
  arn : string prop;
  id : string prop;
  metadata : metadata list prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

let make ?id ?tags ?tags_all ~name ~properties __id =
  let __type = "aws_iot_billing_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_billing_group
        (aws_iot_billing_group ?id ?tags ?tags_all ~name ~properties
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name ~properties __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~properties __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
