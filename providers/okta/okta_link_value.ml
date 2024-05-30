(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_link_value = {
  associated_user_ids : string prop list option; [@option]
  id : string prop option; [@option]
  primary_name : string prop;
  primary_user_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_link_value) -> ()

let yojson_of_okta_link_value =
  (function
   | {
       associated_user_ids = v_associated_user_ids;
       id = v_id;
       primary_name = v_primary_name;
       primary_user_id = v_primary_user_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_primary_user_id
         in
         ("primary_user_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_primary_name in
         ("primary_name", arg) :: bnds
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
         match v_associated_user_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "associated_user_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_link_value -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_link_value

[@@@deriving.end]

let okta_link_value ?associated_user_ids ?id ~primary_name
    ~primary_user_id () : okta_link_value =
  { associated_user_ids; id; primary_name; primary_user_id }

type t = {
  tf_name : string;
  associated_user_ids : string list prop;
  id : string prop;
  primary_name : string prop;
  primary_user_id : string prop;
}

let make ?associated_user_ids ?id ~primary_name ~primary_user_id __id
    =
  let __type = "okta_link_value" in
  let __attrs =
    ({
       tf_name = __id;
       associated_user_ids =
         Prop.computed __type __id "associated_user_ids";
       id = Prop.computed __type __id "id";
       primary_name = Prop.computed __type __id "primary_name";
       primary_user_id = Prop.computed __type __id "primary_user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_link_value
        (okta_link_value ?associated_user_ids ?id ~primary_name
           ~primary_user_id ());
    attrs = __attrs;
  }

let register ?tf_module ?associated_user_ids ?id ~primary_name
    ~primary_user_id __id =
  let (r : _ Tf_core.resource) =
    make ?associated_user_ids ?id ~primary_name ~primary_user_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
