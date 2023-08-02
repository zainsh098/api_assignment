import 'package:api_assignment/generated/json/base/json_field.dart';
import 'package:api_assignment/generated/json/listings_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ListingsDataEntity {
	List<ListingsDataListings>? listings;
	String? nextPage;
	String? message;

	ListingsDataEntity();

	factory ListingsDataEntity.fromJson(Map<String, dynamic> json) => $ListingsDataEntityFromJson(json);

	Map<String, dynamic> toJson() => $ListingsDataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ListingsDataListings {
	@JSONField(name: "_id")
	String? sId;
	String? deviceCondition;
	String? listedBy;
	String? deviceStorage;
	List<ListingsDataListingsImages>? images;
	ListingsDataListingsDefaultImage? defaultImage;
	String? listingLocation;
	String? make;
	String? marketingName;
	String? mobileNumber;
	String? model;
	bool? verified;
	String? status;
	String? listingDate;
	String? deviceRam;
	String? createdAt;
	String? listingId;
	int? listingNumPrice;
	String? listingState;

	ListingsDataListings();

	factory ListingsDataListings.fromJson(Map<String, dynamic> json) => $ListingsDataListingsFromJson(json);

	Map<String, dynamic> toJson() => $ListingsDataListingsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ListingsDataListingsImages {
	String? fullImage;

	ListingsDataListingsImages();

	factory ListingsDataListingsImages.fromJson(Map<String, dynamic> json) => $ListingsDataListingsImagesFromJson(json);

	Map<String, dynamic> toJson() => $ListingsDataListingsImagesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ListingsDataListingsDefaultImage {
	String? fullImage;

	ListingsDataListingsDefaultImage();

	factory ListingsDataListingsDefaultImage.fromJson(Map<String, dynamic> json) => $ListingsDataListingsDefaultImageFromJson(json);

	Map<String, dynamic> toJson() => $ListingsDataListingsDefaultImageToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}