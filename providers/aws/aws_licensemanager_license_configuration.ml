(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_licensemanager_license_configuration = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  license_count : float prop option; [@option]  (** license_count *)
  license_count_hard_limit : bool prop option; [@option]
      (** license_count_hard_limit *)
  license_counting_type : string prop;  (** license_counting_type *)
  license_rules : string prop list option; [@option]
      (** license_rules *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_licensemanager_license_configuration *)

let aws_licensemanager_license_configuration ?description ?id
    ?license_count ?license_count_hard_limit ?license_rules ?tags
    ?tags_all ~license_counting_type ~name () :
    aws_licensemanager_license_configuration =
  {
    description;
    id;
    license_count;
    license_count_hard_limit;
    license_counting_type;
    license_rules;
    name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  license_count : float prop;
  license_count_hard_limit : bool prop;
  license_counting_type : string prop;
  license_rules : string list prop;
  name : string prop;
  owner_account_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?license_count ?license_count_hard_limit
    ?license_rules ?tags ?tags_all ~license_counting_type ~name __id
    =
  let __type = "aws_licensemanager_license_configuration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       license_count = Prop.computed __type __id "license_count";
       license_count_hard_limit =
         Prop.computed __type __id "license_count_hard_limit";
       license_counting_type =
         Prop.computed __type __id "license_counting_type";
       license_rules = Prop.computed __type __id "license_rules";
       name = Prop.computed __type __id "name";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_licensemanager_license_configuration
        (aws_licensemanager_license_configuration ?description ?id
           ?license_count ?license_count_hard_limit ?license_rules
           ?tags ?tags_all ~license_counting_type ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?license_count
    ?license_count_hard_limit ?license_rules ?tags ?tags_all
    ~license_counting_type ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?license_count ?license_count_hard_limit
      ?license_rules ?tags ?tags_all ~license_counting_type ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
