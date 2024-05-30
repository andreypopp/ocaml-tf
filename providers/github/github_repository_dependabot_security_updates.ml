(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_repository_dependabot_security_updates = {
  enabled : bool prop;
  id : string prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_dependabot_security_updates) -> ()

let yojson_of_github_repository_dependabot_security_updates =
  (function
   | { enabled = v_enabled; id = v_id; repository = v_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : github_repository_dependabot_security_updates ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_dependabot_security_updates

[@@@deriving.end]

let github_repository_dependabot_security_updates ?id ~enabled
    ~repository () : github_repository_dependabot_security_updates =
  { enabled; id; repository }

type t = {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  repository : string prop;
}

let make ?id ~enabled ~repository __id =
  let __type = "github_repository_dependabot_security_updates" in
  let __attrs =
    ({
       tf_name = __id;
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_dependabot_security_updates
        (github_repository_dependabot_security_updates ?id ~enabled
           ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~enabled ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?id ~enabled ~repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
