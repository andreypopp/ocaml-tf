(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type review_request_delegation = {
  algorithm : string prop option; [@option]
  member_count : float prop option; [@option]
  notify : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : review_request_delegation) -> ()

let yojson_of_review_request_delegation =
  (function
   | {
       algorithm = v_algorithm;
       member_count = v_member_count;
       notify = v_notify;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_notify with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "notify", arg in
             bnd :: bnds
       in
       let bnds =
         match v_member_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "member_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "algorithm", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : review_request_delegation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_review_request_delegation

[@@@deriving.end]

type github_team_settings = {
  id : string prop option; [@option]
  team_id : string prop;
  review_request_delegation : review_request_delegation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_team_settings) -> ()

let yojson_of_github_team_settings =
  (function
   | {
       id = v_id;
       team_id = v_team_id;
       review_request_delegation = v_review_request_delegation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_review_request_delegation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_review_request_delegation)
               v_review_request_delegation
           in
           let bnd = "review_request_delegation", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_team_id in
         ("team_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_team_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_team_settings

[@@@deriving.end]

let review_request_delegation ?algorithm ?member_count ?notify () :
    review_request_delegation =
  { algorithm; member_count; notify }

let github_team_settings ?id ?(review_request_delegation = [])
    ~team_id () : github_team_settings =
  { id; team_id; review_request_delegation }

type t = {
  tf_name : string;
  id : string prop;
  team_id : string prop;
  team_slug : string prop;
  team_uid : string prop;
}

let make ?id ?(review_request_delegation = []) ~team_id __id =
  let __type = "github_team_settings" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       team_id = Prop.computed __type __id "team_id";
       team_slug = Prop.computed __type __id "team_slug";
       team_uid = Prop.computed __type __id "team_uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_team_settings
        (github_team_settings ?id ~review_request_delegation ~team_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(review_request_delegation = [])
    ~team_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~review_request_delegation ~team_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
