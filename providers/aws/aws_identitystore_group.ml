(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type external_ids = {
  id : string prop;  (** id *)
  issuer : string prop;  (** issuer *)
}
[@@deriving yojson_of]

type aws_identitystore_group = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  identity_store_id : string prop;  (** identity_store_id *)
}
[@@deriving yojson_of]
(** aws_identitystore_group *)

let aws_identitystore_group ?description ?id ~display_name
    ~identity_store_id () : aws_identitystore_group =
  { description; display_name; id; identity_store_id }

type t = {
  description : string prop;
  display_name : string prop;
  external_ids : external_ids list prop;
  group_id : string prop;
  id : string prop;
  identity_store_id : string prop;
}

let make ?description ?id ~display_name ~identity_store_id __id =
  let __type = "aws_identitystore_group" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       external_ids = Prop.computed __type __id "external_ids";
       group_id = Prop.computed __type __id "group_id";
       id = Prop.computed __type __id "id";
       identity_store_id =
         Prop.computed __type __id "identity_store_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_identitystore_group
        (aws_identitystore_group ?description ?id ~display_name
           ~identity_store_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~display_name
    ~identity_store_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~display_name ~identity_store_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
