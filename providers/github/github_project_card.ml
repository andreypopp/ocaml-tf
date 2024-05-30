(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_project_card = {
  column_id : string prop;
  content_id : float prop option; [@option]
  content_type : string prop option; [@option]
  id : string prop option; [@option]
  note : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_project_card) -> ()

let yojson_of_github_project_card =
  (function
   | {
       column_id = v_column_id;
       content_id = v_content_id;
       content_type = v_content_type;
       id = v_id;
       note = v_note;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_note with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "note", arg in
             bnd :: bnds
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
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "content_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_column_id in
         ("column_id", arg) :: bnds
       in
       `Assoc bnds
    : github_project_card -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_project_card

[@@@deriving.end]

let github_project_card ?content_id ?content_type ?id ?note
    ~column_id () : github_project_card =
  { column_id; content_id; content_type; id; note }

type t = {
  tf_name : string;
  card_id : float prop;
  column_id : string prop;
  content_id : float prop;
  content_type : string prop;
  etag : string prop;
  id : string prop;
  note : string prop;
}

let make ?content_id ?content_type ?id ?note ~column_id __id =
  let __type = "github_project_card" in
  let __attrs =
    ({
       tf_name = __id;
       card_id = Prop.computed __type __id "card_id";
       column_id = Prop.computed __type __id "column_id";
       content_id = Prop.computed __type __id "content_id";
       content_type = Prop.computed __type __id "content_type";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       note = Prop.computed __type __id "note";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_project_card
        (github_project_card ?content_id ?content_type ?id ?note
           ~column_id ());
    attrs = __attrs;
  }

let register ?tf_module ?content_id ?content_type ?id ?note
    ~column_id __id =
  let (r : _ Tf_core.resource) =
    make ?content_id ?content_type ?id ?note ~column_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
