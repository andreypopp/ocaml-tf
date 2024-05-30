(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_link_definition = {
  associated_description : string prop;
  associated_name : string prop;
  associated_title : string prop;
  id : string prop option; [@option]
  primary_description : string prop;
  primary_name : string prop;
  primary_title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_link_definition) -> ()

let yojson_of_okta_link_definition =
  (function
   | {
       associated_description = v_associated_description;
       associated_name = v_associated_name;
       associated_title = v_associated_title;
       id = v_id;
       primary_description = v_primary_description;
       primary_name = v_primary_name;
       primary_title = v_primary_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_primary_title in
         ("primary_title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_primary_name in
         ("primary_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_primary_description
         in
         ("primary_description", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_associated_title
         in
         ("associated_title", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_associated_name
         in
         ("associated_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_associated_description
         in
         ("associated_description", arg) :: bnds
       in
       `Assoc bnds
    : okta_link_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_link_definition

[@@@deriving.end]

let okta_link_definition ?id ~associated_description ~associated_name
    ~associated_title ~primary_description ~primary_name
    ~primary_title () : okta_link_definition =
  {
    associated_description;
    associated_name;
    associated_title;
    id;
    primary_description;
    primary_name;
    primary_title;
  }

type t = {
  tf_name : string;
  associated_description : string prop;
  associated_name : string prop;
  associated_title : string prop;
  id : string prop;
  primary_description : string prop;
  primary_name : string prop;
  primary_title : string prop;
}

let make ?id ~associated_description ~associated_name
    ~associated_title ~primary_description ~primary_name
    ~primary_title __id =
  let __type = "okta_link_definition" in
  let __attrs =
    ({
       tf_name = __id;
       associated_description =
         Prop.computed __type __id "associated_description";
       associated_name = Prop.computed __type __id "associated_name";
       associated_title =
         Prop.computed __type __id "associated_title";
       id = Prop.computed __type __id "id";
       primary_description =
         Prop.computed __type __id "primary_description";
       primary_name = Prop.computed __type __id "primary_name";
       primary_title = Prop.computed __type __id "primary_title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_link_definition
        (okta_link_definition ?id ~associated_description
           ~associated_name ~associated_title ~primary_description
           ~primary_name ~primary_title ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~associated_description ~associated_name
    ~associated_title ~primary_description ~primary_name
    ~primary_title __id =
  let (r : _ Tf_core.resource) =
    make ?id ~associated_description ~associated_name
      ~associated_title ~primary_description ~primary_name
      ~primary_title __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
