(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]
  expression : string prop;
  title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition) -> ()

let yojson_of_condition =
  (function
   | {
       description = v_description;
       expression = v_expression;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
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
    : condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition

[@@@deriving.end]

type google_endpoints_service_consumers_iam_member = {
  consumer_project : string prop;
  id : string prop option; [@option]
  member : string prop;
  role : string prop;
  service_name : string prop;
  condition : condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_endpoints_service_consumers_iam_member) -> ()

let yojson_of_google_endpoints_service_consumers_iam_member =
  (function
   | {
       consumer_project = v_consumer_project;
       id = v_id;
       member = v_member;
       role = v_role;
       service_name = v_service_name;
       condition = v_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_condition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_condition) v_condition
           in
           let bnd = "condition", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_member in
         ("member", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_consumer_project
         in
         ("consumer_project", arg) :: bnds
       in
       `Assoc bnds
    : google_endpoints_service_consumers_iam_member ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_endpoints_service_consumers_iam_member

[@@@deriving.end]

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_endpoints_service_consumers_iam_member ?id
    ?(condition = []) ~consumer_project ~member ~role ~service_name
    () : google_endpoints_service_consumers_iam_member =
  { consumer_project; id; member; role; service_name; condition }

type t = {
  tf_name : string;
  consumer_project : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
  service_name : string prop;
}

let make ?id ?(condition = []) ~consumer_project ~member ~role
    ~service_name __id =
  let __type = "google_endpoints_service_consumers_iam_member" in
  let __attrs =
    ({
       tf_name = __id;
       consumer_project =
         Prop.computed __type __id "consumer_project";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       role = Prop.computed __type __id "role";
       service_name = Prop.computed __type __id "service_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_endpoints_service_consumers_iam_member
        (google_endpoints_service_consumers_iam_member ?id ~condition
           ~consumer_project ~member ~role ~service_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(condition = []) ~consumer_project
    ~member ~role ~service_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~condition ~consumer_project ~member ~role ~service_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
