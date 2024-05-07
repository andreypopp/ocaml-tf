(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type external_ids = { id : string prop; issuer : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : external_ids) -> ()

let yojson_of_external_ids =
  (function
   | { id = v_id; issuer = v_issuer } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : external_ids -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_ids

[@@@deriving.end]

type aws_identitystore_group = {
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  identity_store_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_identitystore_group) -> ()

let yojson_of_aws_identitystore_group =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       identity_store_id = v_identity_store_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_store_id
         in
         ("identity_store_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_identitystore_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_identitystore_group

[@@@deriving.end]

let aws_identitystore_group ?description ?id ~display_name
    ~identity_store_id () : aws_identitystore_group =
  { description; display_name; id; identity_store_id }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
