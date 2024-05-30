(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_group = {
  custom_profile_attributes : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  skip_users : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_group) -> ()

let yojson_of_okta_group =
  (function
   | {
       custom_profile_attributes = v_custom_profile_attributes;
       description = v_description;
       id = v_id;
       name = v_name;
       skip_users = v_skip_users;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_skip_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_users", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_profile_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_profile_attributes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_group

[@@@deriving.end]

let okta_group ?custom_profile_attributes ?description ?id
    ?skip_users ~name () : okta_group =
  { custom_profile_attributes; description; id; name; skip_users }

type t = {
  tf_name : string;
  custom_profile_attributes : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  skip_users : bool prop;
}

let make ?custom_profile_attributes ?description ?id ?skip_users
    ~name __id =
  let __type = "okta_group" in
  let __attrs =
    ({
       tf_name = __id;
       custom_profile_attributes =
         Prop.computed __type __id "custom_profile_attributes";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       skip_users = Prop.computed __type __id "skip_users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_group
        (okta_group ?custom_profile_attributes ?description ?id
           ?skip_users ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_profile_attributes ?description ?id
    ?skip_users ~name __id =
  let (r : _ Tf_core.resource) =
    make ?custom_profile_attributes ?description ?id ?skip_users
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
