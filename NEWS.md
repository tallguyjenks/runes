# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Summary

> Given a version number MAJOR.MINOR.PATCH, increment the:
>
> 1. MAJOR version when you make incompatible API changes,
> 2. MINOR version when you add functionality in a backwards compatible manner, and
> 3. PATCH version when you make backwards compatible bug fixes.
>
> Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

### Guiding Principles

> Changelogs are for _humans_, not machines.
> There should be an entry for every single version.
> The same types of changes should be grouped.
> Versions and sections should be linkable.
> The latest version comes first.
> The release date of each version is displayed.
> Mention whether you follow [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

### Types of changes

> Added for new features.
> Changed for changes in existing functionality.
> Deprecated for soon-to-be removed features.
> Removed for now removed features.
> Fixed for any bug fixes.
> Security in case of vulnerabilities.

## [Unreleased]

### Added

-

### Changed

-

### Deprecated

-

### Removed

-

### Fixed

-

### Security

-

## [0.0.1] - 2020-01-22

### Added

- Core functionality of a-z alhpabet translation to elder futhark
- all special characters, numeric, or otherwise all ignored as pass through
- New function `runes_table()` create a 3 column data frame with the unicode sequence, transcription, and character of the entire elder futhark alphabet to be used for inputting into doucments, reference, or any other purpose

### Changed

- new parameter to `runes()` `hide=FALSE` is now the default option but when set to true, the english 'x' & 'q' characters will not pass through the function and appear at all since there is no equivalent rune.
    + added unit tests to support this new parameter option
    
### Deprecated

-

### Removed

-

### Fixed

-

### Security

-

