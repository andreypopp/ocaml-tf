(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_ip_ranges = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : github_ip_ranges) -> ()

let yojson_of_github_ip_ranges =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : github_ip_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_ip_ranges

[@@@deriving.end]

let github_ip_ranges ?id () : github_ip_ranges = { id }

type t = {
  tf_name : string;
  actions : string list prop;
  actions_ipv4 : string list prop;
  actions_ipv6 : string list prop;
  api : string list prop;
  api_ipv4 : string list prop;
  api_ipv6 : string list prop;
  dependabot : string list prop;
  dependabot_ipv4 : string list prop;
  dependabot_ipv6 : string list prop;
  git : string list prop;
  git_ipv4 : string list prop;
  git_ipv6 : string list prop;
  hooks : string list prop;
  hooks_ipv4 : string list prop;
  hooks_ipv6 : string list prop;
  id : string prop;
  importer : string list prop;
  importer_ipv4 : string list prop;
  importer_ipv6 : string list prop;
  packages : string list prop;
  packages_ipv4 : string list prop;
  packages_ipv6 : string list prop;
  pages : string list prop;
  pages_ipv4 : string list prop;
  pages_ipv6 : string list prop;
  web : string list prop;
  web_ipv4 : string list prop;
  web_ipv6 : string list prop;
}

let make ?id __id =
  let __type = "github_ip_ranges" in
  let __attrs =
    ({
       tf_name = __id;
       actions = Prop.computed __type __id "actions";
       actions_ipv4 = Prop.computed __type __id "actions_ipv4";
       actions_ipv6 = Prop.computed __type __id "actions_ipv6";
       api = Prop.computed __type __id "api";
       api_ipv4 = Prop.computed __type __id "api_ipv4";
       api_ipv6 = Prop.computed __type __id "api_ipv6";
       dependabot = Prop.computed __type __id "dependabot";
       dependabot_ipv4 = Prop.computed __type __id "dependabot_ipv4";
       dependabot_ipv6 = Prop.computed __type __id "dependabot_ipv6";
       git = Prop.computed __type __id "git";
       git_ipv4 = Prop.computed __type __id "git_ipv4";
       git_ipv6 = Prop.computed __type __id "git_ipv6";
       hooks = Prop.computed __type __id "hooks";
       hooks_ipv4 = Prop.computed __type __id "hooks_ipv4";
       hooks_ipv6 = Prop.computed __type __id "hooks_ipv6";
       id = Prop.computed __type __id "id";
       importer = Prop.computed __type __id "importer";
       importer_ipv4 = Prop.computed __type __id "importer_ipv4";
       importer_ipv6 = Prop.computed __type __id "importer_ipv6";
       packages = Prop.computed __type __id "packages";
       packages_ipv4 = Prop.computed __type __id "packages_ipv4";
       packages_ipv6 = Prop.computed __type __id "packages_ipv6";
       pages = Prop.computed __type __id "pages";
       pages_ipv4 = Prop.computed __type __id "pages_ipv4";
       pages_ipv6 = Prop.computed __type __id "pages_ipv6";
       web = Prop.computed __type __id "web";
       web_ipv4 = Prop.computed __type __id "web_ipv4";
       web_ipv6 = Prop.computed __type __id "web_ipv6";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_github_ip_ranges (github_ip_ranges ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
